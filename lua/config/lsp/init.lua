-- It seems we need to first initalize the mason then use lsp config to load the configs

--First initalize mason-lspconfig
local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end
mason_lspconfig.setup()



require("config.lsp.lsp-server-config")
require("config.lsp.nlsp-settings")
require("config.lsp.handlers").setup()
