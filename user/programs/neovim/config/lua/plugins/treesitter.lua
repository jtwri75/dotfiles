return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = { 'c', 'lua', 'luadoc', 'nix', 'diff', 'query', 'vim', 'vimdoc' },
    highlight = { enable = true },
  },
}
