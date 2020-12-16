local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
        execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

vim.cmd [[ autocmd BufWritePost packed.lua PackerCompile ]]
-- vim.cmd('packadd nvim-treesitter')
-- vim.cmd('packadd nvim-lspconfig')

return require('packer').startup(
  function()
    use {'wbthomason/packer.nvim', opt = true}
    use {'inkarkat/vim-UnconditionalPaste', opt = true}

    -- https://github.com/wbthomason/packer.nvim/issues/87
    use {'kana/vim-textobj-user'}

    use {'mhinz/vim-signify'}
    use {'godlygeek/tabular'; opt = true; cmd = {'Tabularize'}};
    use {'neovim/nvim-lspconfig', config = require('plugins.lsp')};

    -- syntax files
    use { 'pangloss/vim-javascript'}
    use { 'maxmellon/vim-jsx-pretty'}
    use { 'lifepillar/pgsql.vim'}
    use { 'herringtondarkholme/yats.vim'}
    use { 'hail2u/vim-css3-syntax'}
    use { 'othree/html5.vim'}
    use { 'bfrg/vim-cpp-modern'}
    use { 'vim-python/python-syntax'}
    use { 'habamax/vim-godot'}
    use { 'tikhomirov/vim-glsl'}

    -- tpope
    use {
      'tpope/vim-commentary';
      opt = true;
      keys = {{'n'; 'gcc'}; {'x'; 'gc'}; {'o'; 'gc'}; {'n'; 'gc'}};
    };

    use {
      'tpope/vim-unimpaired';
    };

    use {
      'tpope/vim-surround';
      -- opt = true;
      -- keys = {{'n'; 'yss'}; {'x'; 'S'}; {'o'; 'ys'};{'n'; 'ys'}};
    };
    use {
       'tpope/vim-rsi',
       opt=true ,
       -- event = 'InsertEnter *'
    };
    use {
      'tpope/vim-repeat';
      -- opt = true;
      -- keys = {{'n'; '.'}};
    };

    -- use {
    --   'tpope/vim-ragtag/';
    -- };


    -- fuzzy finder
    -- use {
    --   'nvim-telescope/telescope.nvim',
    --   requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    -- }

    -- mattn
    use {
      'mattn/emmet-vim';
      opt = true;
      setup=[[
        vim.g.user_emmet_mode = 'i'
        vim.g.user_emmet_leader_key = "<c-c>"
        vim.g.user_emmet_expandabbr_key = '<c-c><c-c>'
      ]],
      keys = {
        {'i'; '<c-c>m'};
        {'i'; '<c-c>A'};
        {'i'; '<c-c>a'};
        {'i'; '<c-c>k'};
        {'i'; '<c-c>j'};
        {'i'; '<c-c>/'};
        {'i'; '<c-c>I'};
        {'i'; '<c-c>i'};
        {'i'; '<c-c>N'};
        {'i'; '<c-c>n'};
        {'i'; '<c-c>D'};
        {'i'; '<c-c>d'};
        {'i'; '<c-c>u'};
        {'i'; '<c-c>;'};
        {'i'; '<c-c><c-c>'};
      };
      cmd = {'Emmet'; 'EmmetInstall'};
    };

    -- andrew radev
    use {'andrewradev/tagalong.vim', opt=true;}
    use {'andrewradev/sideways.vim', opt=true;}
    use {'andrewradev/splitjoin.vim', opt=true;}

    -- kana
    use {
      'kana/vim-textobj-entire',
      opt=true,
      -- requires={{'kana/vim-textobj-user', opt=true}},
      keys = {{'o'; 'ae'}, {'o'; 'ie'}, {'v'; 'ae'}, {'v'; 'ie'}}
    }

    use {
      'kana/vim-textobj-line',
      opt=true,
      -- requires={{'kana/vim-textobj-user', opt=true}},
      setup='vim.g.textobj_line_no_default_key_mappings= true',
      keys = {{'o'; 'ar'}, {'o'; 'ir'}, {'x'; 'ar'}, {'x'; 'ir'}},
      config = require'plugins.vim-textobj-line'
    }

    -- text objects
    use {
      'julian/vim-textobj-variable-segment',
      -- opt=true,
      -- keys = {{'o'; 'av'}, {'o'; 'iv'}, {'v'; 'av'}, {'v'; 'iv'}}
    }

    use {'wellle/targets.vim'}

    use {'jasonlong/vim-textobj-css'}

    use {
      'whatyouhide/vim-textobj-xmlattr',
      -- opt=true,
      -- keys = {{'o'; 'ax'}, {'o'; 'ix'}, {'v'; 'ax'}, {'v'; 'ix'}}
    }
    use {
      'inkarkat/vim-replacewithregister',
      -- opt=true,
      -- keys = {{'n'; 'gr'}; {'o'; 'grr'}; {'x'; 'gr'};}
    }

    use {'romainl/vim-tinymru'; config=require'plugins.vim-tinymru'};
    use {'liuchengxu/space-vim-dark', config=require'plugins.space-vim-dark'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}
    use {'nvim-treesitter/nvim-treesitter-refactor'}
    use {'nvim-treesitter/nvim-treesitter', config=require'plugins.nvim-treesitter'}
    use {'ludovicchabant/vim-gutentags', config=require'plugins.vim-gutentags'}
    use {'brookhong/cscope.vim'}
    use {'tommcdo/vim-exchange'; opt=true }
    use {'weilbith/nvim-lsp-bacomp'; opt=true }
    use {'weilbith/nvim-lsp-smag'; opt=true }

    use {'nvim-lua/completion-nvim', config=require('plugins.completion-nvim')}

    use {'hrsh7th/vim-vsnip', config=require'plugins.vim-vsnip'}
    use {'hrsh7th/vim-vsnip-integ'}


    use {'steelsojka/completion-buffers'}


    --miscelanneous and unused
    use {'mattn/vim-sonictemplate', opt=true}
    use {'liuchengxu/vista.vim', opt=true}
    use {'kana/vim-textobj-indent', opt=true}
    use {'mg979/vim-visual-multi', opt=true}
    use {'psliwka/vim-smoothie',  opt=true}
    use {'norcalli/nvim-colorizer.lua', opt=true}
    use {'Guergeiro/clean-path.vim', opt=true}

  end
)
