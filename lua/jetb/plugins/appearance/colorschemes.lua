return {
  {
    "nickkadutskyi/jb.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd("colorscheme jb")
    end,
    specs = {
      {
        "lukas-reineke/virt-column.nvim",
        optional = true,
        opts = {
          highlight = {
            "General_Editor_Guides_VisualGuides",
            "General_Editor_Guides_VisualGuides",
            "General_Editor_Guides_HardWrapGuide",
          },
        },
      },
    },
  },
}
