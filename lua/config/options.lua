local opt = vim.opt


opt.equalalways = false

opt.number = true -- Row number

opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.termguicolors = true

opt.statusline = '%{toupper(mode())}▐ %F%m%r%h%w │ %2p%% %l/%L %-2v │ ts:%{&ts} sw:%{&sw} ft:%Y ff:%{&ff} │ %{&encoding}'
opt.shortmess = 'ilmnrxsWF'
opt.smartindent = false
opt.autoindent = true
opt.laststatus = 2
opt.report = 0 --Always show messages when lines changes

opt.scrolloff = 999

opt.showmatch = true --Highlights matching bracket
opt.matchtime = 1 --show matching bracket for 0.2 seconds

opt.cursorline = true

opt.completeopt = {
	'menu', -- Use a popup menu to show the possible completions
	'menuone', -- use the popmenu also when there's only one match.
	'noselect', -- Do not select a match in the menu
	'noinsert' -- Do not insert any text for a match until the user selects a match from the menu
}

opt.errorbells = false
opt.visualbell = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
