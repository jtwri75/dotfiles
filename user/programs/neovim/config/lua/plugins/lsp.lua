return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
  },
  config = function()
    vim.diagnostic.config({
      severity_sort = true,
      virtual_text = true,
    })

    local servers = {
      clangd = {},
      lua_ls = {},
      nil_ls = {},
    }

    for server, config in pairs(servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)

      vim.lsp.enable(server)
      vim.lsp.config(server, config)
    end
  end,
}
