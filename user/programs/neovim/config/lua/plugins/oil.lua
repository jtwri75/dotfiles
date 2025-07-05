return {
  'stevearc/oil.nvim',
  opts = {},
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    {
      '-',
      function()
        require('oil').open()
      end,
      desc = 'Open parent directory',
    },
  },
}
