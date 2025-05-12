return {
  "gpanders/editorconfig.nvim",
  event = "BufReadPre",
  config = function()
    require("editorconfig")
  end
}