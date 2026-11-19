return {
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    keys = {
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    },
    opts = {},
  }
}
