local M = {}

local ascii_dir = vim.fn.stdpath("config") .. "/asciis"
function M.random_header()
	  local files = vim.fn.glob(ascii_dir .. "/*", false, true)

	  if #files == 0 then
	    return { "Neovim" }
	  end

	  math.randomseed(os.time())

	  local file = files[math.random(#files)]
	  return vim.fn.readfile(file)
end


return {
	{
	  "goolord/alpha-nvim",
	  event = "VimEnter",
	  config = function()
	    local alpha = require("alpha")
	    local dashboard = require("alpha.themes.dashboard")
	    dashboard.section.header.val = M.random_header()
	    dashboard.section.buttons.val = {}
	    alpha.setup(dashboard.opts)
	  end
	}

}
