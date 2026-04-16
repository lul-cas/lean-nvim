vim.g.python3_host_prog = vim.fn.system("pyenv which python"):gsub("\n", "")

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")
