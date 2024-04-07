return {
  'stevearc/conform.nvim',
  opts = {
    format = {
      timeout_ms = 3000,
      async = false,
      quiet = false,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      javascript = {'prettier'},
      typescript = {'prettier'},
      typescriptreact = {'prettier'},
      javascriptreact = {'prettier'},
      css = {'prettier'},
      scss = {'prettier'},
      json = {'prettier'},
      yaml = {'prettier'},
      markdown = {'prettier'},
      lua = {'stylua'},
      python = {'black'},
      rust = {'rustfmt'},
      go = {'gofmt', 'goimports'},
      sh = {'shfmt'},
      html = {'prettier'},
      vue = {'prettier'},
      svelte = {'prettier'},
      graphql = {'prettier'},
      graphqls = {'prettier'},
    },
  }
}
