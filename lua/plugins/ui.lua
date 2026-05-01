return {
	{
	  "goolord/alpha-nvim",
	  event = "VimEnter",
	  config = function()
	    local alpha = require("alpha")
	    local dashboard = require("alpha.themes.dashboard")

	    dashboard.section.header.val = vim.split([[
		  ,-.       _,---._ __  / \
		 /  )    .-'       `./ /   \  meooow
		(  (   ,'            `/    /|
		 \  `-"             \'\   / |
		  `.              ,  \ \ /  |
		   /`.          ,'-`----Y   |
		  (            ;        |   '
		  |  ,-.    ,-'         |  /
	       checking my nvim configs | /
		  )  |  \  `.___________|/
		  `--'   `--'
		]], "\n")

	    dashboard.section.buttons.val = {}

	    alpha.setup(dashboard.opts)
	  end
	}

}
