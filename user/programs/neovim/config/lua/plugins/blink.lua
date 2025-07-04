return {
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  opts = {
    keymap = { preset = 'default' },
    sources = {
      default = { 'lsp', 'path' },
    },
  },
}
