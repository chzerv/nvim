-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

local bootstrap = false

if not vim.loop.fs_stat(vim.fn.glob(install_path)) then
  os.execute('git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  bootstrap = true
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager
  use {
    'lewis6991/impatient.nvim',
    config = function()
      local impatient = require('impatient')
      impatient.enable_profile()
    end
  }

  use "nathom/filetype.nvim"
  use { 'nvim-lua/plenary.nvim', opt = true };
  use(require 'plugins.vim-gutentags')
  use(require 'plugins.tpopes')
  use(require 'plugins.space-vim-dark');
  -- https://github.com/jedrzejboczar/toggletasks.nvim
  -- use(require 'plugins.emmet-vim')
  use(require 'plugins.telescope')
  use(require('plugins.text-objects-operators'))
  use(require 'plugins.gitsigns')
  use(require('plugins.nvim-treesitter-plugins'))
  -- use(require 'plugins.skkeleton')
  use(require 'plugins.lsp-plugins')
  use(require 'plugins.cmp-and-friends')
  -- broken
  use(require 'plugins.treesitter-unit')
  use(require 'plugins.ui')
  use(require 'plugins.stuffs')

  if bootstrap then
    require("packer").sync()
  end
end)
