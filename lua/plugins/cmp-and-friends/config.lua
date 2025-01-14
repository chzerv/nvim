return function()
  local luasnip = require 'luasnip'
  local cmp = require 'cmp'

  local mappings = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<C-k>'] = cmp.mapping(function(fallback)
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<C-j>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }

  cmp.setup {
    preselect = cmp.PreselectMode.None,
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
        preselect = cmp.PreselectMode.None
      end,
    },
    mapping = cmp.mapping.preset.insert(mappings),
    sources = {
      { name = "nvim_lsp", max_item_count = 20, priority_weight = 100},
      { name = 'luasnip', priority_weight = 120 },
      { name = "buffer", max_item_count = 5, priority_weight = 80},
      { name = "path", max_item_count = 5, priority_weight = 100},
      { name = 'skkeleton'},
    },
    view = {
      entries = 'native'
    }
  }
end
