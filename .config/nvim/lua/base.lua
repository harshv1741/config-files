vim.cmd('autocmd!')


vim.opt.backspace = 'indent,eol,start' -- Backspace
vim.opt.number = true
vim.opt.encoding = 'UTF-8'
vim.opt.fileencoding = 'UTF-8'

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true
vim.opt.si = true
vim.opt.wrap = false
vim.opt.path:append { '**' } -- Finding files search down into sub folders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Cs = "\e[4:3m"]])

-- Add asterisk in block comments
vim.opt.formatoptions:append { 'r' }
