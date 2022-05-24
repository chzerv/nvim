return {
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', opt = true },
  { 'tami5/sql.nvim', opt = true },
  -- {
  --   'tknightz/telescope-termfinder.nvim',
  --   config = function ()
  --     require('telescope').load_extension("termfinder")
  --   end,
  --   opt = true,
  -- },
  {
    "nvim-telescope/telescope-frecency.nvim",
    opt = true,
    wants = { "sql.nvim" }
  },
  {
    'nvim-telescope/telescope.nvim',
    wants = {
      'plenary.nvim',
      'telescope-fzf-native.nvim',
      'telescope-frecency.nvim',
      -- 'telescope-termfinder.nvim',
    },
    opt=true,
    keys = {
      {'n'; '<leader>sf'};
      {'n'; '<leader>sb'};
      {'n'; '<leader>sg'};
      {'n'; '<leader>st'};
      {'n'; '<leader>sp'};
      {'n'; '<leader>sl'};
    };
    cmd = {
      'Telescope'
    };

    config=function ()
      require('plugins.nvim-telescope.telescope-config');
    end
  }
}
