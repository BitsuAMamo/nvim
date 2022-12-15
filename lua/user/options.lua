local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true


-- Tabs and Indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true


-- Line wrapping
opt.wrap = false


-- Search Settings
opt.ignorecase = true
opt.smartcase = true


-- Cursor Line
opt.cursorline = true


-- Apperance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- BackSpace
opt.backspace = "indent,eol,start"


-- Split Window
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.hls = false
