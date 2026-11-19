return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "mason-org/mason.nvim", cmd = "Mason", opts = {} },
      { "mason-org/mason-lspconfig.nvim" },
    },
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = function(_, opts)
      for name, cfg in pairs(opts.servers) do
        vim.lsp.config(name, cfg)
        vim.lsp.enable(name)
      end
    end,
  },
}
