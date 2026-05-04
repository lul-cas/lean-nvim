local _theme = {
  normal = {
    a = { fg = "#12101f", bg = "#a060ff", gui = "bold" },
    b = { fg = "#ddd6ec", bg = "#1c1828" },
    c = { fg = "#ddd6ec", bg = "#12101f" },
  },
  insert = {
    a = { fg = "#12101f", bg = "#50e8d8", gui = "bold" },
    b = { fg = "#ddd6ec", bg = "#1c1828" },
    c = { fg = "#ddd6ec", bg = "#12101f" },
  },
  visual = {
    a = { fg = "#12101f", bg = "#f03060", gui = "bold" },
    b = { fg = "#ddd6ec", bg = "#1c1828" },
    c = { fg = "#ddd6ec", bg = "#12101f" },
  },
  replace = {
    a = { fg = "#12101f", bg = "#e8a848", gui = "bold" },
    b = { fg = "#ddd6ec", bg = "#1c1828" },
    c = { fg = "#ddd6ec", bg = "#12101f" },
  },
  command = {
    a = { fg = "#12101f", bg = "#b080f0", gui = "bold" },
    b = { fg = "#ddd6ec", bg = "#1c1828" },
    c = { fg = "#ddd6ec", bg = "#12101f" },
  },
  inactive = {
    a = { fg = "#8f879c", bg = "#1c1828" },
    b = { fg = "#8f879c", bg = "#1c1828" },
    c = { fg = "#8f879c", bg = "#12101f" },
  },
}

return {
	{
	  "nvim-lualine/lualine.nvim",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
	    require("lualine").setup({
	      options = {
          theme = _theme,
          icons_enabled = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          globalstatus = true,
	      },
	      sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = {
            {
              "filename",
              path = 1,
            },
          },
          lualine_x = {
            "diagnostics",
            "encoding",
            "filetype",
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
	    })
	  end,
	}
}
