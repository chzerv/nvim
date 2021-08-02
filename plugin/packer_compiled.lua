-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/evakuator/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/evakuator/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/evakuator/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/evakuator/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/evakuator/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["clean-path.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/clean-path.vim"
  },
  ["complextras.nvim"] = {
    config = { "\27LJ\2\n|\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0]inoremap <c-x><c-d> <c-r>=luaeval(\"require('complextras').complete_line_from_cwd()\")<CR>\bcmd\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/complextras.nvim"
  },
  ["cscope.vim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/cscope.vim"
  },
  ["emmet-vim"] = {
    commands = { "Emmet", "EmmetInstall" },
    keys = { { "i", "<c-q>m" }, { "i", "<c-q>A" }, { "i", "<c-q>a" }, { "i", "<c-q>k" }, { "i", "<c-q>j" }, { "i", "<c-q>/" }, { "i", "<c-q>I" }, { "i", "<c-q>i" }, { "i", "<c-q>N" }, { "i", "<c-q>n" }, { "i", "<c-q>D" }, { "i", "<c-q>d" }, { "i", "<c-q>u" }, { "i", "<c-q>;" }, { "i", "<c-q><c-q>" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  ["eskk.vim"] = {
    config = { "\27LJ\2\n¸\3\0\0\a\0\21\0(6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\4\1+\2\2\0=\2\5\0016\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0005\6\v\0B\1\5\0016\1\0\0009\1\4\1\18\2\0\0'\3\r\0&\2\3\2=\2\f\0016\1\0\0009\1\4\0015\2\16\0\18\3\0\0'\4\15\0&\3\4\3=\3\17\2=\2\14\0016\1\0\0009\1\4\0015\2\20\0\18\3\0\0'\4\19\0&\3\4\3=\3\17\2=\2\18\1K\0\1\0\1\0\2\rencoding\veuc-jp\vsorted\3\1\21/skk/SKK-JISYO.L\26eskk#large_dictionary\tpath\1\0\2\rencoding\nutf-8\vsorted\3\0\21/skk/skk-jisyo.s\20eskk#dictionary\t/skk\19eskk#directory\1\0\1\fnoremap\1\24<Plug>(eskk:toggle)\n<c-l>\6i\20nvim_set_keymap\bapi\29eskk#no_default_mappings\6g\24~/.local/share/nvim\vexpand\afn\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/eskk.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["html5.vim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/html5.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nù\1\0\0\2\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\vLineNr$indent_blankline_char_highlight\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\1\3\0\0\thelp\vpacker&indent_blankline_filetype_exclude\bâ”Š\26indent_blankline_char\6g\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n[\0\0\3\0\6\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\18termguicolors\6o\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lsp-bacomp"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/nvim-lsp-bacomp"
  },
  ["nvim-lsp-smag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/nvim-lsp-smag"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nè\t\0\2\b\0(\0a6\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0'\6\5\0005\a\6\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\a\0'\6\b\0005\a\t\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0'\6\v\0005\a\f\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0'\6\14\0005\a\15\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\16\0'\6\17\0005\a\18\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\19\0'\6\20\0005\a\21\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\22\0'\6\23\0005\a\24\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\25\0'\6\26\0005\a\27\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\28\0'\6\29\0005\a\30\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\31\0'\6 \0005\a!\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\"\0'\6#\0005\a$\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5%\0'\6&\0005\a'\0B\2\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2+<cmd>lua vim.lsp.buf.code_action()<CR>\n<a-.>\1\0\2\fnoremap\2\vsilent\2&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn\1\0\2\fnoremap\2\vsilent\0020<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\15<leader>gw\1\0\2\fnoremap\2\vsilent\2/<cmd>lua vim.lsp.buf.document_symbol()<CR>\15<leader>gt\1\0\2\fnoremap\2\vsilent\2*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gr\1\0\2\fnoremap\2\vsilent\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\15<leader>gy\1\0\2\fnoremap\2\vsilent\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<c-k>\1\0\2\fnoremap\2\vsilent\2.<cmd>lua vim.lsp.buf.implementation()<CR>\15<leader>gi\1\0\2\fnoremap\2\vsilent\2*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>gf\1\0\2\fnoremap\2\vsilent\2%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gh\1\0\2\fnoremap\2\vsilent\2+<cmd>lua vim.lsp.buf.declaration()<CR>\15<leader>ge\1\0\2\fnoremap\2\vsilent\2*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gd\6n\20nvim_set_keymap\bapi\bvim’\1\0\1\6\0\a\1\23\18\1\0\0006\2\0\0009\2\1\2'\4\2\0B\2\2\2\15\0\2\0X\3\15€6\2\0\0009\2\1\2'\4\2\0B\2\2\2'\3\3\0\18\4\0\0&\2\4\0026\3\4\0009\3\5\0039\3\6\3\18\5\2\0B\3\2\2\t\3\0\0X\3\1€\18\1\2\0L\1\2\0\15executable\afn\bvim\n/bin/\16VIRTUAL_ENV\vgetenv\aos\2W\0\1\5\1\2\0\14\18\1\0\0'\2\0\0&\1\2\1-\2\0\0009\2\1\2\18\4\1\0B\2\2\2\v\2\0\0X\3\3€+\3\0\0L\3\2\0X\3\1€L\1\2\0K\0\1\0\0À\ffs_stat\18/node_modules\25\0\1\2\1\1\0\3-\1\0\0=\1\0\0K\0\1\0\bÀ\bcmd‰\f\1\0\r\0Y\0¡\0016\0\0\0009\0\1\0006\1\0\0009\1\2\0019\1\3\0019\1\4\1B\1\1\0026\2\5\0'\4\6\0B\2\2\0026\3\5\0'\5\a\0B\3\2\0029\4\b\0019\4\t\0049\4\n\4+\5\2\0=\5\v\0043\4\f\0009\5\r\0029\5\14\0055\a\15\0=\4\16\aB\5\2\0019\5\17\0029\5\14\0055\a\18\0=\4\16\a5\b\22\0005\t\21\0005\n\20\0005\v\19\0=\v\n\n=\n\t\t=\t\b\b=\b\23\a5\b\24\0=\b\25\aB\5\2\0019\5\26\0029\5\14\0055\a\27\0=\4\16\a5\b\31\0005\t\30\0005\n\29\0005\v\28\0=\v\n\n=\n\t\t=\t\b\b=\b\23\aB\5\2\0016\5\5\0'\a \0B\5\2\0019\5 \0029\5\14\0055\a!\0=\4\16\a5\b'\0005\t%\0005\n\"\0005\v#\0=\v$\n=\n&\t=\t(\b=\b)\aB\5\2\0019\5*\0029\5\14\0055\a+\0=\4\16\aB\5\2\0019\5,\0029\5\14\0055\a-\0=\4\16\aB\5\2\0019\5.\0029\5\14\0055\a/\0=\4\16\aB\5\2\0019\0050\0029\5\14\0055\a2\0005\b1\0=\b3\a5\b4\0=\b5\a=\4\16\a5\b9\0005\t8\0005\n7\0005\v6\0=\v\n\n=\n\t\t=\t\b\b=\b\23\aB\5\2\0019\5:\0029\5\14\0055\a<\0005\b;\0=\b3\a=\4\16\a5\b>\0005\t=\0=\t?\b5\t@\0=\tA\b5\tB\0=\tC\b=\b)\a5\bG\0005\tF\0005\nE\0005\vD\0=\v\n\n=\n\t\t=\t\b\b=\b\23\aB\5\2\0019\5H\0029\5\14\0055\aI\0=\4\16\a5\bJ\0005\tK\0=\t5\b=\bL\aB\5\2\0013\5M\0003\6N\0\18\a\6\0006\t\0\0009\tO\t9\tP\tB\t\1\0A\a\0\0025\bQ\0>\a\4\b>\a\6\b9\tR\0029\t\14\t5\vS\0=\b3\v=\4\16\v=\1\23\v5\fT\0=\f5\v3\fU\0=\fV\vB\t\2\0019\tW\0029\t\14\t5\vX\0=\4\16\vB\t\2\0012\0\0€K\0\1\0\1\0\0\nvuels\18on_new_config\0\1\2\0\0\thtml\1\0\0\14angularls\1\6\0\0\rngserver\f--stdio\23--tsProbeLocations\0\23--ngProbeLocations\vgetcwd\afn\0\0\ngodot\1\3\0\0\agd\rgdscript\1\0\2\tport\3ø.\thost\014127.0.0.1\1\0\0\rgdscript\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\tscss\1\0\1\rvalidate\2\tless\1\0\1\rvalidate\2\bcss\1\0\0\1\0\1\rvalidate\1\1\0\0\1\3\0\0\31vscode-css-language-server\f--stdio\ncssls\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\14filetypes\1\3\0\0\thtml\15htmldjango\bcmd\1\0\0\1\3\0\0 vscode-html-language-server\f--stdio\thtml\1\0\0\rtsserver\1\0\0\vtexlab\1\0\0\nvimls\rsettings\vpython\1\0\0\ranalysis\1\0\0\15extraPaths\1\2\0\0\benv\1\0\2\21typeCheckingMode\nbasic\27completeFunctionParens\2\1\0\0\fpylance\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\18rust_analyzer\17init_options\1\0\3\21clangdFileStatus\2\23completeUnimported\2\20usePlaceholders\2\17capabilities\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\vclangd\14on_attach\1\0\0\nsetup\vbashls\0\19snippetSupport\19completionItem\15completion\17textDocument\22lspconfig/configs\14lspconfig\frequire\29make_client_capabilities\rprotocol\blsp\tloop\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n„\f\0\0\a\0003\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0005\5\16\0=\5\b\4=\4\17\0035\4\18\0005\5\19\0=\5\b\4=\4\20\3=\3\21\0025\3\22\0005\4\23\0=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0005\4\29\0005\5\30\0005\6\31\0=\6 \5=\5\b\4=\4!\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\4=\4'\0035\4(\0005\5)\0=\5*\0045\5+\0=\5,\0045\5-\0=\5.\0045\5/\0=\0050\4=\0041\3=\0032\2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\1\venable\2\tswap\18swap_previous\1\0\1\15<leader>ah\21@parameter.inner\14swap_next\1\0\1\15<leader>al\21@parameter.inner\1\0\1\venable\2\vselect\aiF\1\0\4\tjava#(method_declaration) @function\bcpp$(function_definition) @function\vpython$(function_definition) @function\6c$(function_definition) @function\1\0\16\aic\23@conditional.inner\aiy\17@block.inner\aay\17@block.outer\ail\16@loop.inner\aim\16@call.inner\aif\20@function.inner\aam\16@call.outer\aal\16@loop.outer\aad\15@lhs.inner\ais\21@statement.inner\aac\23@conditional.outer\aiC\17@class.inner\aaC\17@class.outer\aas\21@statement.outer\aaf\20@function.outer\aid\15@rhs.inner\1\0\2\14lookahead\2\venable\2\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\fdisable\1\2\0\0\tbash\1\0\1\venable\1\rrefactor\15navigation\1\0\2\21list_definitions\15<leader>tl\20goto_definition\15<leader>td\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\15<leader>tr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\v<c-i>c\21node_incremental\v<c-i>n\21node_decremental\v<c-i>m\19init_selection\n<c-m>\1\0\1\venable\1\14highlight\1\0\1\21ensure_installed\ball\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["pgsql.vim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/pgsql.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["pylance.nvim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/pylance.nvim"
  },
  ["python-syntax"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/python-syntax"
  },
  ["sideways.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/sideways.vim"
  },
  ["space-vim-dark"] = {
    config = { "\27LJ\2\n—\3\0\0\3\0\t\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\1K\0\1\0'hi Comment cterm=italic gui=italic@hi LineNr guifg=white guibg=NONE ctermfg=white ctermbg=NONE,hi CursorLineNr ctermbg=NONE guibg=NONE*hi SignColumn ctermbg=NONE guibg=NONE*hi LineNr     ctermbg=NONE guibg=NONE*hi Normal     ctermbg=NONE guibg=NONE\31colorscheme space-vim-dark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/space-vim-dark"
  },
  ["splitjoin.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/splitjoin.vim"
  },
  tabular = {
    after_files = { "/home/evakuator/.local/share/nvim/site/pack/packer/opt/tabular/after/plugin/TabularMaps.vim" },
    commands = { "Tabularize" },
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/tabular"
  },
  ["tagalong.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/tagalong.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n­\4\0\0\6\0\22\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\3=\3\r\2B\0\2\0016\0\14\0009\0\15\0009\0\16\0'\2\17\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\0\0'\2\1\0B\0\2\0029\0\21\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\1\0\2\fnoremap\2\vsilent\2Î\1<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({find_command = {\"fd\", \"--no-ignore-vcs\", \"--hidden\", \"--ignore-file\", vim.fn.expand(\"~/.config/.ignore\")}}))<cr>\14<space>tf\6n\20nvim_set_keymap\bapi\bvim\rdefaults\rmappings\1\0\0\6i\1\0\0\1\0\3\n<c-u>\1\n<c-d>\1\n<c-h>\1\15extensions\1\0\0\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\2\25override_file_sorter\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-UnconditionalPaste"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-UnconditionalPaste"
  },
  ["vim-commentary"] = {
    keys = { { "n", "gcc" }, { "x", "gc" }, { "o", "gc" }, { "n", "gc" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-commentary"
  },
  ["vim-cpp-modern"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-cpp-modern"
  },
  ["vim-css3-syntax"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-css3-syntax"
  },
  ["vim-exchange"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-exchange"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-glsl"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-godot"
  },
  ["vim-gutentags"] = {
    config = { "\27LJ\2\n¾\b\0\0\4\0\19\0-6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0006\1\0\0009\1\b\0019\1\t\1'\3\n\0B\1\2\2=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\v\0006\0\0\0009\0\1\0+\1\2\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\15\0'\2\16\0B\0\2\0016\0\0\0009\0\1\0005\1\18\0=\1\17\0K\0\1\0\1\3\0\0\23--tag-relative=yes\21--fields=+ailmnS\31gutentags_ctags_extra_args\\command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')\bcmd'gutentags_generate_on_empty_buffer gutentags_generate_on_write\"gutentags_generate_on_missing\30gutentags_generate_on_new\25~/.cache/nvim/ctags/\vexpand\afn\24gutentags_cache_dir\1\3\0\0\17package.json\t.git\27gutentags_project_root(gutentags_add_default_project_roots\1>\0\0\n*.git\n*.svg\t*.hg\14*/tests/*\nbuild\tdist\21*sites/*/files/*\bbin\17node_modules\21bower_components\ncache\rcompiled\tdocs\fexample\vbundle\vvendor\t*.md\16*-lock.json\v*.lock\16*bundle*.js\15*build*.js\n.*rc*\v*.json\f*.min.*\n*.map\n*.bak\n*.zip\n*.pyc\f*.class\n*.sln\r*.Master\r*.csproj\n*.tmp\18*.csproj.user\f*.cache\n*.pdb\ntags*\rcscope.*\n*.exe\n*.dll\n*.mp3\n*.ogg\v*.flac\n*.swp\n*.swo\n*.bmp\n*.gif\n*.ico\n*.jpg\n*.png\n*.rar\n*.zip\n*.tar\r*.tar.gz\r*.tar.xz\14*.tar.bz2\n*.pdf\n*.doc\v*.docx\n*.ppt\v*.pptx\28gutentags_ctags_exclude\6g\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-ragtag"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-replacewithregister"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-replacewithregister"
  },
  ["vim-rsi"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-rsi"
  },
  ["vim-smoothie"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-smoothie"
  },
  ["vim-sonictemplate"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-sonictemplate"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-css"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-textobj-css"
  },
  ["vim-textobj-entire"] = {
    config = { "\27LJ\2\nß\1\0\0\6\0\t\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\1K\0\1\0\29<Plug>(textobj-entire-a)\aae\6x\29<Plug>(textobj-entire-i)\aie\6o\20nvim_set_keymap\bapi\bvim\0" },
    keys = { { "o", "ae" }, { "o", "ie" }, { "x", "ae" }, { "x", "ie" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-textobj-entire"
  },
  ["vim-textobj-indent"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-textobj-indent"
  },
  ["vim-textobj-line"] = {
    config = { "\27LJ\2\nÛ\1\0\0\6\0\t\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\1K\0\1\0\27<Plug>(textobj-line-a)\aar\6x\27<Plug>(textobj-line-i)\air\6o\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-textobj-line"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-textobj-variable-segment"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-textobj-variable-segment"
  },
  ["vim-textobj-xmlattr"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-textobj-xmlattr"
  },
  ["vim-tinymru"] = {
    config = { "\27LJ\2\n‚\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0)\1\26\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0005\5\b\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\14:ME <c-z>\15<leader>eo\6n\20nvim_set_keymap\bapi\14wildcharm\6o\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-tinymru"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-visual-multi"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\n¼\4\0\0\6\0\24\0C6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2'\2\6\0&\1\2\1=\1\2\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\r\0'\3\n\0'\4\v\0005\5\14\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\15\0'\3\n\0'\4\v\0005\5\16\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\15\0'\3\17\0'\4\18\0005\5\20\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\r\0'\3\17\0'\4\18\0005\5\21\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\r\0'\3\22\0'\4\23\0004\5\0\0B\0\5\1K\0\1\0\27<Plug>(vsnip-cut-text)\n<C-h>\1\0\1\texpr\2\1\0\1\texpr\2\1\0\1\texpr\2Bvsnip#jumpable(-1) ? \"<Plug>(vsnip-jump-prev)\"      : \"<C-j>\"\n<C-j>\1\0\1\texpr\2\6x\1\0\1\texpr\2\6s\1\0\1\texpr\2Bvsnip#available(1) ? \"<Plug>(vsnip-expand-or-jump)\" : \"<C-k>\"\n<C-k>\6i\20nvim_set_keymap\bapi\14/snippets\vconfig\fstdpath\afn\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vista.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/opt/vista.vim"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/home/evakuator/.local/share/nvim/site/pack/packer/start/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
        vim.g.user_emmet_mode = 'i'
        vim.g.user_emmet_leader_key = "<c-q>"
        vim.g.user_emmet_expandabbr_key = '<c-q><c-q>'
      
time([[Setup for emmet-vim]], false)
-- Setup for: vim-textobj-entire
time([[Setup for vim-textobj-entire]], true)
vim.g.textobj_entire_no_default_key_mappings=true
time([[Setup for vim-textobj-entire]], false)
-- Setup for: vim-textobj-line
time([[Setup for vim-textobj-line]], true)
vim.g.textobj_line_no_default_key_mappings=true
time([[Setup for vim-textobj-line]], false)
time([[packadd for vim-textobj-line]], true)
vim.cmd [[packadd vim-textobj-line]]
time([[packadd for vim-textobj-line]], false)
-- Config for: complextras.nvim
time([[Config for complextras.nvim]], true)
try_loadstring("\27LJ\2\n|\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0]inoremap <c-x><c-d> <c-r>=luaeval(\"require('complextras').complete_line_from_cwd()\")<CR>\bcmd\bvim\0", "config", "complextras.nvim")
time([[Config for complextras.nvim]], false)
-- Config for: vim-tinymru
time([[Config for vim-tinymru]], true)
try_loadstring("\27LJ\2\n‚\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0)\1\26\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0005\5\b\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\14:ME <c-z>\15<leader>eo\6n\20nvim_set_keymap\bapi\14wildcharm\6o\bvim\0", "config", "vim-tinymru")
time([[Config for vim-tinymru]], false)
-- Config for: space-vim-dark
time([[Config for space-vim-dark]], true)
try_loadstring("\27LJ\2\n—\3\0\0\3\0\t\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\1K\0\1\0'hi Comment cterm=italic gui=italic@hi LineNr guifg=white guibg=NONE ctermfg=white ctermbg=NONE,hi CursorLineNr ctermbg=NONE guibg=NONE*hi SignColumn ctermbg=NONE guibg=NONE*hi LineNr     ctermbg=NONE guibg=NONE*hi Normal     ctermbg=NONE guibg=NONE\31colorscheme space-vim-dark\bcmd\bvim\0", "config", "space-vim-dark")
time([[Config for space-vim-dark]], false)
-- Config for: vim-textobj-line
time([[Config for vim-textobj-line]], true)
try_loadstring("\27LJ\2\nÛ\1\0\0\6\0\t\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\1K\0\1\0\27<Plug>(textobj-line-a)\aar\6x\27<Plug>(textobj-line-i)\air\6o\20nvim_set_keymap\bapi\bvim\0", "config", "vim-textobj-line")
time([[Config for vim-textobj-line]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nù\1\0\0\2\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\vLineNr$indent_blankline_char_highlight\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\1\3\0\0\thelp\vpacker&indent_blankline_filetype_exclude\bâ”Š\26indent_blankline_char\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n[\0\0\3\0\6\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\18termguicolors\6o\bvim\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n„\f\0\0\a\0003\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0005\5\16\0=\5\b\4=\4\17\0035\4\18\0005\5\19\0=\5\b\4=\4\20\3=\3\21\0025\3\22\0005\4\23\0=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0005\4\29\0005\5\30\0005\6\31\0=\6 \5=\5\b\4=\4!\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\4=\4'\0035\4(\0005\5)\0=\5*\0045\5+\0=\5,\0045\5-\0=\5.\0045\5/\0=\0050\4=\0041\3=\0032\2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\1\venable\2\tswap\18swap_previous\1\0\1\15<leader>ah\21@parameter.inner\14swap_next\1\0\1\15<leader>al\21@parameter.inner\1\0\1\venable\2\vselect\aiF\1\0\4\tjava#(method_declaration) @function\bcpp$(function_definition) @function\vpython$(function_definition) @function\6c$(function_definition) @function\1\0\16\aic\23@conditional.inner\aiy\17@block.inner\aay\17@block.outer\ail\16@loop.inner\aim\16@call.inner\aif\20@function.inner\aam\16@call.outer\aal\16@loop.outer\aad\15@lhs.inner\ais\21@statement.inner\aac\23@conditional.outer\aiC\17@class.inner\aaC\17@class.outer\aas\21@statement.outer\aaf\20@function.outer\aid\15@rhs.inner\1\0\2\14lookahead\2\venable\2\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\fdisable\1\2\0\0\tbash\1\0\1\venable\1\rrefactor\15navigation\1\0\2\21list_definitions\15<leader>tl\20goto_definition\15<leader>td\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\15<leader>tr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\v<c-i>c\21node_incremental\v<c-i>n\21node_decremental\v<c-i>m\19init_selection\n<c-m>\1\0\1\venable\1\14highlight\1\0\1\21ensure_installed\ball\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nè\t\0\2\b\0(\0a6\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0'\6\5\0005\a\6\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\a\0'\6\b\0005\a\t\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0'\6\v\0005\a\f\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0'\6\14\0005\a\15\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\16\0'\6\17\0005\a\18\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\19\0'\6\20\0005\a\21\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\22\0'\6\23\0005\a\24\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\25\0'\6\26\0005\a\27\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\28\0'\6\29\0005\a\30\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\31\0'\6 \0005\a!\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\"\0'\6#\0005\a$\0B\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5%\0'\6&\0005\a'\0B\2\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2+<cmd>lua vim.lsp.buf.code_action()<CR>\n<a-.>\1\0\2\fnoremap\2\vsilent\2&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn\1\0\2\fnoremap\2\vsilent\0020<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\15<leader>gw\1\0\2\fnoremap\2\vsilent\2/<cmd>lua vim.lsp.buf.document_symbol()<CR>\15<leader>gt\1\0\2\fnoremap\2\vsilent\2*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gr\1\0\2\fnoremap\2\vsilent\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\15<leader>gy\1\0\2\fnoremap\2\vsilent\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<c-k>\1\0\2\fnoremap\2\vsilent\2.<cmd>lua vim.lsp.buf.implementation()<CR>\15<leader>gi\1\0\2\fnoremap\2\vsilent\2*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>gf\1\0\2\fnoremap\2\vsilent\2%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gh\1\0\2\fnoremap\2\vsilent\2+<cmd>lua vim.lsp.buf.declaration()<CR>\15<leader>ge\1\0\2\fnoremap\2\vsilent\2*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gd\6n\20nvim_set_keymap\bapi\bvim’\1\0\1\6\0\a\1\23\18\1\0\0006\2\0\0009\2\1\2'\4\2\0B\2\2\2\15\0\2\0X\3\15€6\2\0\0009\2\1\2'\4\2\0B\2\2\2'\3\3\0\18\4\0\0&\2\4\0026\3\4\0009\3\5\0039\3\6\3\18\5\2\0B\3\2\2\t\3\0\0X\3\1€\18\1\2\0L\1\2\0\15executable\afn\bvim\n/bin/\16VIRTUAL_ENV\vgetenv\aos\2W\0\1\5\1\2\0\14\18\1\0\0'\2\0\0&\1\2\1-\2\0\0009\2\1\2\18\4\1\0B\2\2\2\v\2\0\0X\3\3€+\3\0\0L\3\2\0X\3\1€L\1\2\0K\0\1\0\0À\ffs_stat\18/node_modules\25\0\1\2\1\1\0\3-\1\0\0=\1\0\0K\0\1\0\bÀ\bcmd‰\f\1\0\r\0Y\0¡\0016\0\0\0009\0\1\0006\1\0\0009\1\2\0019\1\3\0019\1\4\1B\1\1\0026\2\5\0'\4\6\0B\2\2\0026\3\5\0'\5\a\0B\3\2\0029\4\b\0019\4\t\0049\4\n\4+\5\2\0=\5\v\0043\4\f\0009\5\r\0029\5\14\0055\a\15\0=\4\16\aB\5\2\0019\5\17\0029\5\14\0055\a\18\0=\4\16\a5\b\22\0005\t\21\0005\n\20\0005\v\19\0=\v\n\n=\n\t\t=\t\b\b=\b\23\a5\b\24\0=\b\25\aB\5\2\0019\5\26\0029\5\14\0055\a\27\0=\4\16\a5\b\31\0005\t\30\0005\n\29\0005\v\28\0=\v\n\n=\n\t\t=\t\b\b=\b\23\aB\5\2\0016\5\5\0'\a \0B\5\2\0019\5 \0029\5\14\0055\a!\0=\4\16\a5\b'\0005\t%\0005\n\"\0005\v#\0=\v$\n=\n&\t=\t(\b=\b)\aB\5\2\0019\5*\0029\5\14\0055\a+\0=\4\16\aB\5\2\0019\5,\0029\5\14\0055\a-\0=\4\16\aB\5\2\0019\5.\0029\5\14\0055\a/\0=\4\16\aB\5\2\0019\0050\0029\5\14\0055\a2\0005\b1\0=\b3\a5\b4\0=\b5\a=\4\16\a5\b9\0005\t8\0005\n7\0005\v6\0=\v\n\n=\n\t\t=\t\b\b=\b\23\aB\5\2\0019\5:\0029\5\14\0055\a<\0005\b;\0=\b3\a=\4\16\a5\b>\0005\t=\0=\t?\b5\t@\0=\tA\b5\tB\0=\tC\b=\b)\a5\bG\0005\tF\0005\nE\0005\vD\0=\v\n\n=\n\t\t=\t\b\b=\b\23\aB\5\2\0019\5H\0029\5\14\0055\aI\0=\4\16\a5\bJ\0005\tK\0=\t5\b=\bL\aB\5\2\0013\5M\0003\6N\0\18\a\6\0006\t\0\0009\tO\t9\tP\tB\t\1\0A\a\0\0025\bQ\0>\a\4\b>\a\6\b9\tR\0029\t\14\t5\vS\0=\b3\v=\4\16\v=\1\23\v5\fT\0=\f5\v3\fU\0=\fV\vB\t\2\0019\tW\0029\t\14\t5\vX\0=\4\16\vB\t\2\0012\0\0€K\0\1\0\1\0\0\nvuels\18on_new_config\0\1\2\0\0\thtml\1\0\0\14angularls\1\6\0\0\rngserver\f--stdio\23--tsProbeLocations\0\23--ngProbeLocations\vgetcwd\afn\0\0\ngodot\1\3\0\0\agd\rgdscript\1\0\2\tport\3ø.\thost\014127.0.0.1\1\0\0\rgdscript\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\tscss\1\0\1\rvalidate\2\tless\1\0\1\rvalidate\2\bcss\1\0\0\1\0\1\rvalidate\1\1\0\0\1\3\0\0\31vscode-css-language-server\f--stdio\ncssls\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\14filetypes\1\3\0\0\thtml\15htmldjango\bcmd\1\0\0\1\3\0\0 vscode-html-language-server\f--stdio\thtml\1\0\0\rtsserver\1\0\0\vtexlab\1\0\0\nvimls\rsettings\vpython\1\0\0\ranalysis\1\0\0\15extraPaths\1\2\0\0\benv\1\0\2\21typeCheckingMode\nbasic\27completeFunctionParens\2\1\0\0\fpylance\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\18rust_analyzer\17init_options\1\0\3\21clangdFileStatus\2\23completeUnimported\2\20usePlaceholders\2\17capabilities\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\vclangd\14on_attach\1\0\0\nsetup\vbashls\0\19snippetSupport\19completionItem\15completion\17textDocument\22lspconfig/configs\14lspconfig\frequire\29make_client_capabilities\rprotocol\blsp\tloop\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: eskk.vim
time([[Config for eskk.vim]], true)
try_loadstring("\27LJ\2\n¸\3\0\0\a\0\21\0(6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\4\1+\2\2\0=\2\5\0016\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0005\6\v\0B\1\5\0016\1\0\0009\1\4\1\18\2\0\0'\3\r\0&\2\3\2=\2\f\0016\1\0\0009\1\4\0015\2\16\0\18\3\0\0'\4\15\0&\3\4\3=\3\17\2=\2\14\0016\1\0\0009\1\4\0015\2\20\0\18\3\0\0'\4\19\0&\3\4\3=\3\17\2=\2\18\1K\0\1\0\1\0\2\rencoding\veuc-jp\vsorted\3\1\21/skk/SKK-JISYO.L\26eskk#large_dictionary\tpath\1\0\2\rencoding\nutf-8\vsorted\3\0\21/skk/skk-jisyo.s\20eskk#dictionary\t/skk\19eskk#directory\1\0\1\fnoremap\1\24<Plug>(eskk:toggle)\n<c-l>\6i\20nvim_set_keymap\bapi\29eskk#no_default_mappings\6g\24~/.local/share/nvim\vexpand\afn\bvim\0", "config", "eskk.vim")
time([[Config for eskk.vim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n¼\4\0\0\6\0\24\0C6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2'\2\6\0&\1\2\1=\1\2\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\r\0'\3\n\0'\4\v\0005\5\14\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\15\0'\3\n\0'\4\v\0005\5\16\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\15\0'\3\17\0'\4\18\0005\5\20\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\r\0'\3\17\0'\4\18\0005\5\21\0B\0\5\0016\0\0\0009\0\a\0009\0\b\0'\2\r\0'\3\22\0'\4\23\0004\5\0\0B\0\5\1K\0\1\0\27<Plug>(vsnip-cut-text)\n<C-h>\1\0\1\texpr\2\1\0\1\texpr\2\1\0\1\texpr\2Bvsnip#jumpable(-1) ? \"<Plug>(vsnip-jump-prev)\"      : \"<C-j>\"\n<C-j>\1\0\1\texpr\2\6x\1\0\1\texpr\2\6s\1\0\1\texpr\2Bvsnip#available(1) ? \"<Plug>(vsnip-expand-or-jump)\" : \"<C-k>\"\n<C-k>\6i\20nvim_set_keymap\bapi\14/snippets\vconfig\fstdpath\afn\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n­\4\0\0\6\0\22\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\3=\3\r\2B\0\2\0016\0\14\0009\0\15\0009\0\16\0'\2\17\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\0\0'\2\1\0B\0\2\0029\0\21\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\1\0\2\fnoremap\2\vsilent\2Î\1<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({find_command = {\"fd\", \"--no-ignore-vcs\", \"--hidden\", \"--ignore-file\", vim.fn.expand(\"~/.config/.ignore\")}}))<cr>\14<space>tf\6n\20nvim_set_keymap\bapi\bvim\rdefaults\rmappings\1\0\0\6i\1\0\0\1\0\3\n<c-u>\1\n<c-d>\1\n<c-h>\1\15extensions\1\0\0\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\2\25override_file_sorter\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-gutentags
time([[Config for vim-gutentags]], true)
try_loadstring("\27LJ\2\n¾\b\0\0\4\0\19\0-6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0006\1\0\0009\1\b\0019\1\t\1'\3\n\0B\1\2\2=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\v\0006\0\0\0009\0\1\0+\1\2\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\15\0'\2\16\0B\0\2\0016\0\0\0009\0\1\0005\1\18\0=\1\17\0K\0\1\0\1\3\0\0\23--tag-relative=yes\21--fields=+ailmnS\31gutentags_ctags_extra_args\\command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')\bcmd'gutentags_generate_on_empty_buffer gutentags_generate_on_write\"gutentags_generate_on_missing\30gutentags_generate_on_new\25~/.cache/nvim/ctags/\vexpand\afn\24gutentags_cache_dir\1\3\0\0\17package.json\t.git\27gutentags_project_root(gutentags_add_default_project_roots\1>\0\0\n*.git\n*.svg\t*.hg\14*/tests/*\nbuild\tdist\21*sites/*/files/*\bbin\17node_modules\21bower_components\ncache\rcompiled\tdocs\fexample\vbundle\vvendor\t*.md\16*-lock.json\v*.lock\16*bundle*.js\15*build*.js\n.*rc*\v*.json\f*.min.*\n*.map\n*.bak\n*.zip\n*.pyc\f*.class\n*.sln\r*.Master\r*.csproj\n*.tmp\18*.csproj.user\f*.cache\n*.pdb\ntags*\rcscope.*\n*.exe\n*.dll\n*.mp3\n*.ogg\v*.flac\n*.swp\n*.swo\n*.bmp\n*.gif\n*.ico\n*.jpg\n*.png\n*.rar\n*.zip\n*.tar\r*.tar.gz\r*.tar.xz\14*.tar.bz2\n*.pdf\n*.doc\v*.docx\n*.ppt\v*.pptx\28gutentags_ctags_exclude\6g\bvim\0", "config", "vim-gutentags")
time([[Config for vim-gutentags]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
if vim.fn.exists(":Emmet") == 0 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Emmet lua require("packer.load")({'emmet-vim'}, { cmd = "Emmet", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":EmmetInstall") == 0 then
vim.cmd [[command! -nargs=* -range -bang -complete=file EmmetInstall lua require("packer.load")({'emmet-vim'}, { cmd = "EmmetInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Tabularize") == 0 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Tabularize lua require("packer.load")({'tabular'}, { cmd = "Tabularize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[inoremap <silent> <c-q><c-q> <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q><lt>c-q>" }, _G.packer_plugins)<cr>]]
vim.cmd [[onoremap <silent> ie <cmd>lua require("packer.load")({'vim-textobj-entire'}, { keys = "ie", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gcc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>a <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>a" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>i <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>i" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>k <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>k" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>D <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>D" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>j <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>j" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>I <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>I" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>u <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>u" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>A <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>A" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>d <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>d" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> ie <cmd>lua require("packer.load")({'vim-textobj-entire'}, { keys = "ie", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> ae <cmd>lua require("packer.load")({'vim-textobj-entire'}, { keys = "ae", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[onoremap <silent> ae <cmd>lua require("packer.load")({'vim-textobj-entire'}, { keys = "ae", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>; <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>;" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>m <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>m" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>/ <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>/" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> gc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[onoremap <silent> gc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>N <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>N" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <c-q>n <cmd>lua require("packer.load")({'emmet-vim'}, { keys = "<lt>c-q>n" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vim-rsi'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
