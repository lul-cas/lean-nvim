return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{ "<F5>", function() require("dap").continue() end, desc = "Dap Continue" },
			{ "<F10>", function() require("dap").step_over() end, desc = "Dap Step Over" },
			{ "<F11>", function() require("dap").step_into() end, desc = "Dep Step Into" },
			{ "<F12>", function() require("dap").step_out() end, desc = "Dep Step Out" },
			{ "<leader>db", function() require("dap").toggle_breakpoint() end, desc="DAP Breakpoint" },
			{ "<leader>dr", function() require("dap").repl.open() end, desc="DAP REPL" },
		},
		config = function()
			local dap = require("dap")

			dap.adapters.codelldb = {
				type = "server",
				port = "${port}",
				executable = {
					command = "codelldb",
					args = { "--port", "${port}" },
				},
			}

			dap.configurations.cpp = {
				{
					name = "Launch file",
					type = "codlldb",
					request = "launch",
					program = function()
						return via.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
				},
			}

			dap.configurations.c = dap.configurations.cpp
			dap.configurations.rust = dap.configurations.cpp
		end
	}
}
