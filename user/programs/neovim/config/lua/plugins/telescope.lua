return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>tp', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>tr', builtin.live_grep, { desc = 'Telescope live grep' })
  end,
}
