local M = {}

---@class jetb.Opts
local defaults = {}

---@param opts? jetb.Opts
function M.setup(opts)
  require("jetb.config.options")
end

return M
