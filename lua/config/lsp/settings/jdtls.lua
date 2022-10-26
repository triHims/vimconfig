local config = { ... }
config.use_lombok_agent = true
local server_available, jdtls = require('nvim-lsp-installer.servers').get_server('jdtls')

vim.fn.setenv('WORKSPACE', '/Users/himansht/.cache/STSWorkspace/JDTLS')

-- this will fill in the correct 'cmd' to use

jdtls:get_default_options().on_new_config(config)


return config
