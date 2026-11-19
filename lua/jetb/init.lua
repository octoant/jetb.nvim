local M = {}

---@param opts? jetb.Opts
function M.setup(opts)
  require("jetb.config").setup(opts)
end

return M
