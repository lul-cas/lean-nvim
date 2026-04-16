return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		priority = 1000,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function ()
			require("nvim-treesitter").setup({
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"bash",
					"json",
					"yaml",
					"toml",
					"html",
					"css",
					"javascript",
					"typescript",
					"tsx",
					"python",
					"c",
					"cpp",
					"c_sharp",
					"java",
					"sql",
					"c_sharp",
					"markdown",
					"markdown_inline",
					"python",
				},
				highlight = { enable = true },
				indent = { enable = true }
			})
		end
	}
}
