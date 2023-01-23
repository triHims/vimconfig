--Lets initialize mason , call lsp config 

-- Mason initalized , then initalize call init and call lsp-sever-config
local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
    return
end

mason.setup()


require "config.lsp"
