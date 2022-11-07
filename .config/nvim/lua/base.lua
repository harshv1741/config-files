local set = vim.opt

set.backspace = 'indent,eol,start' -- Backspace
set.autoindent = true -- Auto Indent
set.smartindent = true -- Smart Indent
set.encoding = "UTF-8" -- Encoding
set.number = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = true
set.wrap = true
set.breakindent = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.wildignore:append { '*/node_modules/*'} 
set.laststatus = 2

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

