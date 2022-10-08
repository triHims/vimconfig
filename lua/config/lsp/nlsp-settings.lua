local nlspsettings = require("nlspsettings")

nlspsettings.setup({
  config_home = vim.fn.stdpath('config') .. '/lua/config/lsp/settings/nlsp-settings',
  local_settings_dir = ".nlsp-settings",
  local_settings_root_markers_fallback = { '.git' },
  append_default_schemas = true,
  loader = 'json'
})


