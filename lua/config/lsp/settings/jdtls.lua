local config = { ... }
config.use_lombok_agent = true
local server_available, jdtls = require('mason-lspconfig').get_installed_server('jdtls')

vim.fn.setenv('WORKSPACE', '/home/himanshu/.cache/STSWorkspace/JDTLS')

-- this will fill in the correct 'cmd' to use

jdtls:get_default_options().on_new_config(config)

print(vim.inspect(config))

return config
