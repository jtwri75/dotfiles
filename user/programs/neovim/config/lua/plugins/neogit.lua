return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    {
      '<leader>p',
      function()
        require('neogit').open()
      end,
      desc = 'Open neogit',
    },
  },
}
