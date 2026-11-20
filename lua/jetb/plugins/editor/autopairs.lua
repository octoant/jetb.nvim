return {
  {
    "nvim-mini/mini.pairs",
    version = false,
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
      modes = { insert = true, command = true, terminal = false },
    },
  },
}
