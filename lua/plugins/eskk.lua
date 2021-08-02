return function() 
  local data_dir = vim.fn.expand('~/.local/share/nvim')
  -- local data_dir = vim.fn.expand('/usr/share')
  vim.g['eskk#no_default_mappings'] = true
  vim.api.nvim_set_keymap('i', '<c-l>', '<Plug>(eskk:toggle)', {noremap=false})
  vim.g['eskk#directory'] = data_dir .. '/skk'
  vim.g['eskk#dictionary'] = {
        path=data_dir .. '/skk/skk-jisyo.s';
        sorted=0;
        encoding='utf-8';
      }
  vim.g['eskk#large_dictionary'] = {
        path= data_dir .. '/skk/SKK-JISYO.L';
        sorted= 1;
        encoding= 'euc-jp';
      }
end
