local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true


-- Tabs and Indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line wrapping
opt.wrap = false



opt.swapfile = false
opt.backup = false
opt.undodir = "C:\\Users\\Bitsu\\AppData\\Local\\nvim-data\\undodir"
opt.undofile = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Cursor Line
opt.cursorline = true
opt.colorcolumn = "80"


-- Apperance
opt.termguicolors = true
opt.background = "dark"
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.iskeyword:append("-")

-- BackSpace
opt.backspace = "indent,eol,start"


-- Split Window
opt.splitright = true
opt.splitbelow = true


opt.updatetime = 50
