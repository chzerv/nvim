-- rg
if fn.executable("rg") then
  vim.opt.grepprg="rg --vimgrep --no-heading --hidden --smart-case --no-ignore-vcs --ignore-file ~/.config/.ignore"
  vim.opt.grepformat = {
    '%f:%l:%c:%m', '%f:%l:%m'
  }
end

local options = {
  clipboard       = "unnamedplus", 
  updatetime      = 100,
  incsearch       = true, 
  hlsearch        = true,
  ignorecase      = true,
  smartcase       = true,
  swapfile        = true,
  backup          = true,
  backupcopy      = 'yes',
  undofile        = true,
  inccommand      = 'split',
  hidden          = true,
  termguicolors   = true,
  number          = true,
  relativenumber  = true,
  wrap            = false,
  expandtab       = true,
  shiftwidth      = 2,
  -- when 'sts' is negative, the value of 'shiftwidth' is used.,
  softtabstop     = -1,
  autoindent      = true,
  splitbelow      = true,
  splitright      = true,
  signcolumn      = 'yes',
}


for k, v in pairs(options) do
  vim.opt[k] = v
end

local globals = {
  -- disable_distribution_plugins
  loaded_gzip              = 1,
  loaded_tar               = 1,
  loaded_tarPlugin         = 1,
  loaded_zip               = 1,
  loaded_zipPlugin         = 1,
  loaded_getscript         = 1,
  loaded_getscriptPlugin   = 1,
  loaded_vimball           = 1,
  loaded_vimballPlugin     = 1,
  loaded_matchit           = 1,
  loaded_matchparen        = 1,
  loaded_2html_plugin      = 1,
  loaded_logiPat           = 1,
  loaded_rrhelper          = 1,
  loaded_netrw             = 1,
  loaded_netrwPlugin       = 1,
  loaded_netrwSettings     = 1,
  loaded_netrwFileHandlers = 1,
  -- Do not source the default filetype.vim
  did_load_filetypes       = 1,
  mapleader = ' '
}

for k, v in pairs(globals) do
  vim.g[k] = v
end

-- create backup folders
folders = { directory = 'swap', backupdir = 'backup', undodir= 'undo'}
for option, folder in pairs(folders) do
  local path = fn.expand(fn.stdpath('data') .. '/' .. folder .. '//')
  vim.o[option] = path
  if not vim.loop.fs_stat(path) then vim.loop.fs_mkdir(path, 493) end
end

-- fdfind 
-- location list needs this to work with fdfind
vim.opt.errorformat:append ",%f"

vim.cmd('filetype plugin on')

vim.opt.shortmess:append('c')

vim.opt.formatoptions:remove('c')
vim.opt.formatoptions:remove('r')
vim.opt.formatoptions:remove('o')
