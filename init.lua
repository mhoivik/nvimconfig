vim.g.mapleader = ' '
vim.o.number = true  -- Use vim.o instead of vim.wo for global options
vim.api.nvim_set_keymap('n', '<leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

vim.opt.nu = true
vim.opt.relativenumber = true
vim.g.autopairs_filetype_blacklist = {'dashboard'}


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)




-- PLUGINS

local opts = {}

require("lazy").setup("plugins")









-- Custom keymaps


-- Telescope
-- Neotree

-- Treesitter


