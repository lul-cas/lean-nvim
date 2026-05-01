return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pyright",
					"ts_ls",
					"html",
					"cssls",
					"jsonls",
					"bashls",
					"elixirls",
					"omnisharp"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			local map = vim.keymap.set

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local bufnr = args.buf
					local opts = { buffer = bufnr }

					map("n", "gd", vim.lsp.buf.definition, opts)
					map("n", "gD", vim.lsp.buf.declaration, opts)
					map("n", "gr", vim.lsp.buf.references, opts)
					map("n", "gi", vim.lsp.buf.implementation, opts)
					map("n", "K",  vim.lsp.buf.hover, opts)
					map("n", "<leader>rn", vim.lsp.buf.rename, opts)
					map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					map("n", "<leader>f", function()
						vim.lsp.buf.format({ async = true })
					end, opts)

					map("n", "[d", vim.diagnostic.goto_prev, opts)
					map("n", "]d", vim.diagnostic.goto_next, opts)
				end
			})

			local lspconfig = require("lspconfig")

			local servers = {
				lua_ls = {},
				clangd = {},
				pyright = {},
				ts_ls = {},
				html = {},
				cssls = {},
				jsonls = {},
				bashls = {},
				omnisharp = {},
				elixirls = {},
			}
			for server, opts in pairs(servers) do
				lspconfig[server].setup(opts)
			end
		end
	}
}
