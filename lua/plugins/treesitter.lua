return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		priority = 1000,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("nvim-treesitter.install").compilers = { "gcc" }

			require("nvim-treesitter.configs").setup({
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
					"markdown",
					"markdown_inline",
					"elixir",
					"heex",
					"eex",
				},
				highlight = { enable = true },
				indent = {
          enable = true,
          disable = {
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
          }
        },
			})
		end,
	},
}
