local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup {
  spec = {
    { "octoant/jetb.nvim", import = "jetb.plugins" },
    { import = "plugins" },
  },
  dev = {
    path = function(plugin)
      local searchPaths = {
        "~/Projects/personal",
        "~/projects/personal",
      }
      for _, path in ipairs(searchPaths) do
        local candidate = vim.fs.joinpath(vim.fn.expand(path), plugin.name)
        if vim.fn.isdirectory(candidate) == 1 then
	  vim.notify(candidate, vim.log.levels.INFO)
          return candidate
        end
      end
      return nil
    end,
    patterns = { "octoant" },
    fallback = true,
  },
}
