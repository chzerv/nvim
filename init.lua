local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local api = vim.api

local disable_distribution_plugins = function()
  vim.g.loaded_gzip              = 1
  vim.g.loaded_tar               = 1
  vim.g.loaded_tarPlugin         = 1
  vim.g.loaded_zip               = 1
  vim.g.loaded_zipPlugin         = 1
  vim.g.loaded_getscript         = 1
  vim.g.loaded_getscriptPlugin   = 1
  vim.g.loaded_vimball           = 1
  vim.g.loaded_vimballPlugin     = 1
  vim.g.loaded_matchit           = 1
  vim.g.loaded_matchparen        = 1
  vim.g.loaded_2html_plugin      = 1
  vim.g.loaded_logiPat           = 1
  vim.g.loaded_rrhelper          = 1
  vim.g.loaded_netrw             = 1
  vim.g.loaded_netrwPlugin       = 1
  vim.g.loaded_netrwSettings     = 1
  vim.g.loaded_netrwFileHandlers = 1
end

disable_distribution_plugins()

-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.api.nvim_exec(
  [[
    augroup Packer
      autocmd!
      autocmd BufWritePost init.lua PackerCompile
    augroup end
  ]],
  false
)

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  -- use 'ludovicchabant/vim-gutentags'
  
  use {'lewis6991/impatient.nvim',
    rocks = 'mpack',
    config = function()
      require('impatient')
    end
  }

  use {
    'tpope/vim-commentary';
    opt = true;
    keys = {{'x'; 'gc'}; {'n'; 'gc'}};
  };

  use {
    'tpope/vim-surround';
    opt = true;
    keys = {{'n'; 'ys'}; {'x'; 'S'}; {'n'; 'cs'}; };
  };

  use {
    'inkarkat/vim-ReplaceWithRegister';
    opt = true;
    keys = {{'n'; 'gr'}; {'x'; 'gr'}; };
  };

  -- use {
  --   "hrsh7th/nvim-cmp",
  --   opt=true,
  --   event = 'InsertEnter',
  --   requires = {
  --     "hrsh7th/cmp-buffer",
  --   }
  -- }

  use {'nvim-lua/plenary.nvim', opt=true};

  use {
    'tjdevries/complextras.nvim',
    opt = true;
    wants = 'plenary.nvim';
    keys = {{'i'; '<c-x><c-w>'}};
    config=function() 
      vim.cmd[[inoremap <c-x><c-w> <c-r>=luaeval("require('complextras').complete_line_from_cwd()")<CR>]]
    end
  };

  use {
    'tpope/vim-unimpaired';
    opt = true;
    keys = {{'n'; '[p'}; {'n'; ']p'}; {'n'; '[l'}; {'n'; ']l'};  }
  };

  use {'wellle/targets.vim'};

  use {'liuchengxu/space-vim-dark',
    config = function()
      -- vim.g.space_nvim_transparent_bg = true
      vim.cmd('colorscheme space-vim-dark')
      vim.cmd('hi Normal     ctermbg=NONE guibg=NONE')
      vim.cmd('hi LineNr     ctermbg=NONE guibg=NONE')
      vim.cmd('hi SignColumn ctermbg=NONE guibg=NONE')
      vim.cmd('hi CursorLineNr ctermbg=NONE guibg=NONE')
      vim.cmd('hi LineNr guifg=white guibg=NONE ctermfg=white ctermbg=NONE')
      vim.cmd('hi Comment cterm=italic gui=italic')
    end
  };
  
  -- use {'folke/tokyonight.nvim',
  --   config = function()
  --     vim.g.tokyonight_transparent = true
  --     vim.g.tokyonight_style = "night"
  --     vim.cmd[[colorscheme tokyonight]]
  --   end
  -- };
   

  use {'kana/vim-textobj-user', opt=true};


  use {
    'kana/vim-textobj-line';
    opt=true;
    wants='vim-textobj-user';
    setup='vim.g.textobj_line_no_default_key_mappings=true';
    keys = {{'o'; 'ar'}, {'o'; 'ir'}, {'x'; 'ar'}, {'x'; 'ir'}};
    config=function() 
      vim.api.nvim_set_keymap('o', 'ir', '<Plug>(textobj-line-i)',{})
      vim.api.nvim_set_keymap('x', 'ir', '<Plug>(textobj-line-i)',{})
      vim.api.nvim_set_keymap('o', 'ar', '<Plug>(textobj-line-a)',{})
      vim.api.nvim_set_keymap('x', 'ar', '<Plug>(textobj-line-a)',{})
    end;
  }

  use {
    'kana/vim-textobj-entire';
    opt=true;
    wants='vim-textobj-user';
    keys = {{'o'; 'ae'}, {'o'; 'ie'}, {'x'; 'ae'}, {'x'; 'ie'}};
  }

  use {
    'tpope/vim-repeat';
    opt = true;
    keys = {{'n'; '.'}};
  };


  use { 
    'tpope/vim-rsi',
    opt=true ,
    event = 'InsertEnter *' 
  };

  use { 
     'romainl/Apprentice',
  };

  use {
    'Julian/vim-textobj-variable-segment';
    opt = true;
    wants='vim-textobj-user';
    keys = {{'o'; 'iv'}; {'o'; 'av'}; {'x'; 'iv'}; {'x'; 'av'}; };
  };

  use {
    'mattn/emmet-vim';
    opt = true;
    setup=[[
      vim.g.user_emmet_mode = 'i'
      vim.g.user_emmet_leader_key = "<c-s>"
      vim.g.user_emmet_expandabbr_key = '<c-s><c-s>'
    ]],
    keys = {
      {'i'; '<c-s>'};
    };
    cmd = {'Emmet'; 'EmmetInstall'};
    };

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make', opt=true }
  use {'tami5/sql.nvim', opt=true}
  use {
    "nvim-telescope/telescope-frecency.nvim",
    opt = true,
    wants = {"sql.nvim"}
  }

  use {
    'nvim-telescope/telescope.nvim',
    wants = {
      'plenary.nvim',
      'telescope-fzf-native.nvim',
      'telescope-frecency.nvim',
    },
    opt=true,
    keys = {
      {'n'; '<leader>tf'};
      {'n'; '<leader>tb'};
      {'n'; '<leader>tg'};
      {'n'; '<leader>tr'};
    };
    cmd = {
      'Telescope'
    };
    config=function() 
      require('telescope').setup {
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          }
        }
      }

      local finders = require('telescope.finders')
      local pickers = require('telescope.pickers')
      local sorters = require('telescope.sorters')

      local bookmarks = function(opts)
        pickers.new(opts, {
          prompt_title = "Bookmarks",
          sorter = sorters.fuzzy_with_index_bias(),
          finder = finders.new_table {
            results = {
              "~/.config/nvim",
              "~/.config/emacs",
              "~/Documents/programming/treesitter-unit/lua/treesitter-unit",
              "~/Documents/payda/paydabackend/",
              "~/Documents/payda/payda-front/",
            },
          },
          attach_mappings = function(_, map)
            return true
          end
        }):find()
      end


      require('telescope.builtin').bookmarks = bookmarks
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('frecency')

      -- vim.cmd [[nnoremap <leader>tf <cmd>Telescope find_files<cr>]]
      vim.api.nvim_set_keymap('n', '<leader>tf', [[<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({find_command = {"fdfind", "--no-ignore-vcs", "--hidden", "--ignore-file", vim.fn.expand("~/.config/.ignore")}}))<cr>]], { noremap = true, silent = true })
      vim.cmd [[nnoremap <leader>tb <cmd>Telescope bookmarks<cr>]]
      vim.cmd [[nnoremap <leader>tg <cmd>Telescope live_grep<cr>]]
      -- vim.cmd [[nnoremap <leader>tb <cmd>Telescope buffers<cr>]]
      vim.cmd [[nnoremap <leader>th <cmd>Telescope help_tags<cr>]]
    end;
  }

  use {
    'lewis6991/gitsigns.nvim', wants = {'plenary.nvim'} ,
    event = 'BufRead',
    opt=true,
    config = function() require('gitsigns').setup() end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    opt = true,
    config = function()
      require'nvim-treesitter.configs'.setup {
      ensure_installed = { "python", "lua"}, 
      highlight = { enable = false },
    }
    end
  }

  -- use {
  --  'nvim-treesitter/nvim-treesitter-refactor',
  --  opt=true,
  --  wants = 'nvim-treesitter',
  --  config = function() 
  --   -- vim.cmd('hi TSDefinitionUsage cterm=underline gui=underline')
  --   -- vim.cmd('hi TSDefinition cterm=underline gui=underline')
  --   require'nvim-treesitter.configs'.setup {
  --     refactor = {
  --      highlight_current_scope = { enable = true },
  --      highlight_definitions = { enable = true },
  --     },
  --   }
  --  end,
  --  event = 'BufReadPre'
  -- }

  use {
      'kuator/some-python-plugin.nvim',
  }

  -- use { "lukas-reineke/indent-blankline.nvim" ,
  --   config = function() 
  --     vim.opt.listchars = {
  --       space = "⋅",
  --       eol = "↴",
  --     }
  --
  --     require("indent_blankline").setup {
  --       space_char_blankline = " ",
  --       show_current_context = true,
  --       -- char = "|",
  --       buftype_exclude = {"terminal"},
  --     }
  --   end,
  --   opt=true,
  --   event='BufReadPost',
  --   wants = 'nvim-treesitter'
  -- }

  use {
    'neovim/nvim-lspconfig',
    requires = 'some-python-plugin.nvim',
    config = function ()
      local uv = vim.loop
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local lspconfig = require('lspconfig')
      local configs = require'lspconfig/configs'
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      local on_attach = function(client, bufnr)
        -- completion.on_attach(client, bufnr)

        -- Keybindings for LSPs
        vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>ge", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gt", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gw", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<a-.>", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
        vim.api.nvim_command('setlocal omnifunc=v:lua.vim.lsp.omnifunc')
      end

      require 'pylance'
      lspconfig.pylance.setup{
        on_attach = on_attach,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
              completeFunctionParens = true,
              -- extraPaths={'env'},
            }
          }
        }
      }
      end
  }

   -- broken
   -- use {
   --   'David-Kunz/treesitter-unit', wants = {'nvim-treesitter'} ,
   --   keys = {
   --     {'o'; 'iu'};
   --     {'o'; 'au'};
   --   };
   --   opt=true,
   --   config = function() 
   --     vim.api.nvim_set_keymap('x', 'iu', ':lua require"treesitter-unit".select()<CR>', {noremap=true})
   --     vim.api.nvim_set_keymap('x', 'au', ':lua require"treesitter-unit".select(true)<CR>', {noremap=true})
   --     vim.api.nvim_set_keymap('o', 'iu', ':<c-u>lua require"treesitter-unit".select()<CR>', {noremap=true})
   --     vim.api.nvim_set_keymap('o', 'au', ':<c-u>lua require"treesitter-unit".select(true)<CR>', {noremap=true})
   --     -- require"treesitter-unit".enable_highlighting('CursorLine')
   --   end
   -- }
end)


--rg
if fn.executable("rg") then
  o.grepprg="rg --vimgrep --no-heading --hidden --smart-case --no-ignore-vcs --ignore-file ~/.config/.ignore"
  o.grepformat='%f:%l:%c:%m,%f:%l:%m'
end

-- fdfind 
-- location list needs this to work with fdfind
o.errorformat = o.errorformat .. ',%f'

o.clipboard = 'unnamedplus'
o.updatetime=100

g.mapleader = ' '

--searching
o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true


o.swapfile = true
o.directory = fn.expand(fn.stdpath('data') .. '/swap//')
o.backup = true
o.backupcopy = 'yes'
o.backupdir = fn.expand(fn.stdpath('data') .. '/backup//')
o.undofile = true
o.undodir = fn.expand(fn.stdpath('data') .. '/undo//')


if fn.isdirectory(o.directory) == 0 then fn.mkdir(o.directory, 'p') end
if fn.isdirectory(o.backupdir) == 0 then fn.mkdir(o.backupdir, 'p') end
if fn.isdirectory(o.undodir) == 0 then fn.mkdir(o.undodir, 'p') end

-- interactive substitute
o.inccommand = 'split'

vim.api.nvim_set_keymap('n', '<a-c>', ':', {noremap=true})
vim.api.nvim_set_keymap('v', '<a-c>', ':', {noremap=true})
vim.api.nvim_set_keymap('i', 'kj', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-l>:nohls<cr>', {noremap=true, silent=true})

vim.cmd([[nnoremap <leader>ec  :edit <c-r>=fnameescape(expand('%:p:h')).'/*'<cr>]])
vim.cmd([[nnoremap <leader>en  :edit <c-r>=stdpath('config').'/**/*'<cr>]])
vim.api.nvim_set_keymap('n', '<leader>lg', ':silent lgrep<space>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>lf', [[:silent lexpr system('fdfind --hidden --no-ignore-vcs --ignore-file ~/.config/.ignore -g "*"')<left><left><left><left>]], {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>lt', ':silent ltag <space>/', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>cc', ':silent cclose<bar>lclose<cr>', {noremap=true})
vim.api.nvim_set_keymap('n', 'cd', ':lcd %:p:h<bar>pwd<cr>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'cu', ':lcd ..<bar>pwd<cr>', {noremap=true, silent=true})

-- https://vi.stackexchange.com/a/2682
vim.cmd([[nnoremap <A-j> :m .+1<CR>==]])
vim.cmd([[nnoremap <A-k> :m .-2<CR>==]])
vim.cmd([[inoremap <A-j> <Esc>:m .+1<CR>==gi]])
vim.cmd([[inoremap <A-k> <Esc>:m .-2<CR>==gi]])
vim.cmd([[vnoremap <A-j> :m '>+1<CR>gv=gv]])
vim.cmd([[vnoremap <A-k> :m '<-2<CR>gv=gv]])


-- https://oroques.dev/notes/neovim-init/
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = true}'  -- enabled in visual mode

-- https://www.reddit.com/r/vim/comments/bmh977/automatically_open_quickfix_window_after/
cmd 'autocmd QuickFixCmdPost [^l]* cwindow'
cmd 'autocmd QuickFixCmdPost l* lwindow'

o.termguicolors = true

o.number = true
o.relativenumber = true
o.wrap = false



o.expandtab = true
bo.expandtab = true
o.shiftwidth = 2
bo.shiftwidth = 2
-- when 'sts' is negative, the value of 'shiftwidth' is used.
o.softtabstop = -1
bo.softtabstop = -1
o.autoindent = true
bo.autoindent = true

o.splitbelow = true
o.splitright = true
o.signcolumn = 'yes'


vim.api.nvim_set_keymap('n', 'csfs', ':cs f s ', {noremap=true})
vim.cmd [[set cscopequickfix=s-,c-,d-,i-,t-,e-]]

-- vim.cmd[[autocmd BufReadPost *  let nmb = 69]]

-- vim.cmd[[colorscheme apprentice]]
