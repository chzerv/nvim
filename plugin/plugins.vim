"{{{ install minpac
let s:nvim_site = $XDG_DATA_HOME..'/nvim/site'
let s:minpac_path = s:nvim_site .. '/pack/minpac/opt/minpac'
if has('vim_starting')
  let s:minpac_url = 'https://github.com/k-takata/minpac.git'
  if !isdirectory(expand(s:minpac_path))
    echo 'installing minpac...'
    call system('git clone ' .. s:minpac_url .. ' ' .. s:minpac_path)
  end
endif
"}}}


"{{{ minpac
packadd minpac

call minpac#init({'dir': s:nvim_site})
"{{{ syntax files
call minpac#add('pangloss/vim-javascript')
call minpac#add('maxmellon/vim-jsx-pretty')
call minpac#add('lifepillar/pgsql.vim')
call minpac#add('herringtondarkholme/yats.vim')
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('othree/html5.vim')
call minpac#add('bfrg/vim-cpp-modern')
"}}}

"{{{ tpope
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-rsi')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-commentary')
"}}}

"{{{ liuchengxu
"call minpac#add('liuchengxu/vim-clap', {'do': ':Clap install-binary!'})
" call minpac#add('liuchengxu/space-vim-theme')
call minpac#add('liuchengxu/vista.vim', {'type':'opt' })
"}}}
"
"{{{ andrewradev
" call minpac#add('andrewradev/dsf.vim')
call minpac#add('andrewradev/tagalong.vim')
call minpac#add('andrewradev/sideways.vim')
call minpac#add('andrewradev/splitjoin.vim')
"}}}
"
"{{{ kana
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')
call minpac#add('kana/vim-textobj-line')
" call minpac#add('kana/vim-textobj-function')
call minpac#add('kana/vim-textobj-indent')
"}}}

"{{{ text objects
call minpac#add('julian/vim-textobj-variable-segment')
call minpac#add('wellle/targets.vim')
call minpac#add('whatyouhide/vim-textobj-xmlattr')
call minpac#add('inkarkat/vim-replacewithregister')
"}}}

"{{{ colorschemes
call minpac#add('dracula/vim', {'type': 'opt'})
" call minpac#add('flazz/vim-colorschemes')
call minpac#add('liuchengxu/space-vim-dark')
"}}}

"{{{ miscleannious
"call minpac#add('ajh17/VimCompletesMe', {'on': []})
call minpac#add('neovim/nvim-lsp', {'type': 'opt'})
call minpac#add('nvim-treesitter/nvim-treesitter', {'type': 'opt'})
call minpac#add('vigoux/architext.nvim', {'type': 'opt'})
call minpac#add('nvim-lua/completion-nvim', {'type': 'opt'})
call minpac#add('nvim-lua/diagnostic-nvim', {'type': 'opt'})
call minpac#add('steelsojka/completion-buffers', {'type': 'opt'})
call minpac#add('hrsh7th/vim-vsnip', {'type': 'opt'})
call minpac#add('hrsh7th/vim-vsnip-integ', {'type': 'opt'})
call minpac#add('norcalli/snippets.nvim', {'type': 'opt'})
call minpac#add('neomake/neomake', {'type': 'opt'})
call minpac#add('godlygeek/tabular')
call minpac#add('numirias/semshi', { 'do': ':UpdateRemotePlugins', 'type': 'opt' })
call minpac#add('ludovicchabant/vim-gutentags')
call minpac#add('sirver/ultisnips', {'type': 'opt'})
call minpac#add('mhinz/vim-signify', {'type': 'opt'})
call minpac#add('mg979/vim-visual-multi', {'type': 'opt'})
call minpac#add('romainl/vim-tinymru', {'type': 'opt'})
call minpac#add('psliwka/vim-smoothie', {'type': 'opt'})
call minpac#add('norcalli/nvim-colorizer.lua', {'type': 'opt'})
call minpac#add('Guergeiro/clean-path.vim', {'type': 'opt'})
call minpac#add('habamax/vim-godot', {'type': 'opt'})
call minpac#add('brookhong/cscope.vim', {'type': 'opt'})
call minpac#add('kristijanhusak/vim-js-file-import', {'type': 'opt'})
call minpac#add('glacambre/firenvim', { 'type': 'opt', 'do': 'packadd firenvim | call firenvim#install(0)'})
"call minpac#add('kuator/favi')
"}}}


if exists('g:vscode')
    " VSCode extension
else
  if exists('g:started_by_firenvim')
    packadd firenvim
    nnoremap <Esc> :call firenvim#focus_page()<CR>
    nnoremap <C-z> :call firenvim#hide_frame()<CR>
    let g:firenvim_config = { 
      \ 'globalSettings': {},
      \ 'localSettings': {
        \      'https?://discord\.com.*' : { 'takeover': 'never', 'priority': 1 },
        \      'https?://vk\.com.*' : { 'takeover': 'never', 'priority': 1 },
        \      'https?://twitter\.com.*' : { 'takeover': 'never', 'priority': 1 },
        \      '.*' : { 'takeover': 'once', 'priority': 0}
      \ },
      \ }
    set laststatus=0 nonumber noruler noshowcmd
  endif
  " packadd diagnostic-nvim
  packadd vim-signify
  " packadd neomake
  " packadd nvim-colorizer.lua
  packadd vim-tinymru
  packadd vim-visual-multi
  " packadd semshi
  packadd vista.vim
  " packadd cscope.vim
  packadd vim-godot
  packadd nvim-lsp
  packadd completion-buffers
  packadd completion-nvim
  lua require("lsp")
  packadd vim-vsnip
  packadd vim-vsnip-integ
  " packadd snippets.nvim
  packadd nvim-treesitter
  lua require('tree-sitter')
  packadd vim-gutentags
  packadd architext.nvim
  " packadd clean-path.vim
endif


"}}}
