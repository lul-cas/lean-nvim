local hl = vim.api.nvim_set_hl
local bg = "#12101f"
local surface = "#1c1828"
local text = "#ddd6ec"

hl(0, "@keyword", { fg = "#D552A3"})
hl(0, "@string", { fg = "#00ff1a" })
hl(0, "@function", { fg = "#FFC85C" })
hl(0, "@type", { fg = "#b080f0" })
hl(0, "@comment", { fg = "#5c6370", italic = true })
hl(0, "@variable", { fg = "#a060ff" })
hl(0, "Normal", { fg = text, bg = bg })
hl(0, "NormalFloat", { fg = text, bg = surface })
hl(0, "FloatBorder", { fg = "#a060ff", bg = surface })
hl(0, "CursorLine", { bg = "#1c1828" })
hl(0, "Visual", { bg = "#302848" })
