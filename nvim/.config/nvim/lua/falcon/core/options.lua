local opt = vim.opt

-- Left Column Settings
opt.number = true -- display number lines
opt.relativenumber = true -- display relative number lines
opt.numberwidth = 2
opt.wrap = false
opt.scrolloff = 10
opt.sidescrolloff = 8

--
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.breakindent = true
opt.softtabstop = 2

--
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.backup = false
opt.clipboard = "unnamedplus"
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.mouse = "a"
opt.showmode = false
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 1000
opt.undofile = true
opt.updatetime = 100
opt.writebackup = false
opt.cursorline = true
opt.signcolumn = "yes"

--
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
