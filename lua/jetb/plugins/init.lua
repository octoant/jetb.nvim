return {
  {
    "folke/lazy.nvim",
    version = "*",
  },
  {
    "octoant/jetb.nvim",
    version = "*",
    lazy = false,
    priority = 10000,
    cond = true,
    opts = {},
  },

  { import = "jetb.plugins.appearance" },
  { import = "jetb.plugins.languages" },
}
