return {
  {
    "nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              workspace = {
                checkThirdParty = false,
              },
              completion = { callSnippet = "Replace" },
              signatureHelp = { enable = true },
              codeLens = { enable = true },
              hint = {
                enable = true,
                paramName = "All",
                paramType = true,
                setType = true,
                semicolon = "Disable",
                arrayIndex = "auto",
              },
            },
          },
        },
      },
    },
  },
}
