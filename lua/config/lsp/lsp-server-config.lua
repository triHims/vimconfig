-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end
local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end

local on_attach = require("config.lsp.handlers").on_attach
local capabilities = require("config.lsp.handlers").capabilities

mason_lspconfig.setup_handlers({
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function(server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {

            on_attach = require("config.lsp.handlers").on_attach,
            capabilities = require("config.lsp.handlers").capabilities,
        }
    end,
    -- Next, you can provide targeted overrides for specific servers.
    ["jsonls"] = function()
        local jsonls_opts = require("config.lsp.settings.jsonls")
        jsonls_opts["on_attach"]=on_attach;
        jsonls_opts["capabilities"]=capabilities
        lspconfig.jsonls.setup(jsonls_opts)
    end,
    ["pyright"] = function()
        local pyright_opts = require("config.lsp.settings.pyright")
        pyright_opts["on_attach"]=on_attach;
        pyright_opts["capabilities"]=capabilities
        lspconfig.pyright.setup(pyright_opts)
    end,
    ["sumneko_lua"] = function()
        local sumneko_opts = require("config.lsp.settings.sumneko_lua")
        sumneko_opts["on_attach"]=on_attach;
        sumneko_opts["capabilities"]=capabilities
        lspconfig.sumneko_lua.setup(sumneko_opts)
    end,
    ["pyright"] = function()
        local pyright_opts = require("config.lsp.settings.pyright")
        pyright_opts["on_attach"]=on_attach;
        pyright_opts["capabilities"]=capabilities
        lspconfig.pyright.setup(pyright_opts)
    end,
    ["jdtls"] = function()
        local jdtls_opts = require("config.lsp.settings.jdtls")
        jdtls_opts["on_attach"]=on_attach;
        jdtls_opts["capabilities"]=capabilities
        lspconfig.jdtls.setup(jdtls_opts)
    end,


})

--[[         if server.name == "sumneko_lua" then ]]
--[[         local sumneko_opts = require("config.lsp.settings.sumneko_lua") ]]
--[[     opts = vim.tbl_deep_extend("force", sumneko_opts, opts) ]]
--[[         end ]]
--[[]]
--[[         if server.name == "pyright" then ]]
--[[         local pyright_opts = require("config.lsp.settings.pyright") ]]
--[[     opts = vim.tbl_deep_extend("force", pyright_opts, opts) ]]
--[[         end ]]
--[[         if server.name == "jdtls" then ]]
--[[         local jdtls_opts = require("config.lsp.settings.jdtls") ]]
--[[     opts = vim.tbl_deep_extend("force", jdtls_opts, opts) ]]
--[[     end ]]
--[[]]
--[[     ["rust_analyzer"] = function () ]]
--[[                require("rust-tools").setup {} ]]
--[[            end, ]]
--[[            ["sumneko_lua"] = function () ]]
--[[                lspconfig.sumneko_lua.setup { ]]
--[[                    settings = { ]]
--[[                        Lua = { ]]
--[[                            diagnostics = { ]]
--[[                                globals = { "vim" } ]]
--[[                            } ]]
--[[                        } ]]
--[[                    } ]]
--[[                } ]]
--[[            end, ]]
--[[        }). ]]
--[[]]
--[[ lsp_installer.on_server_ready(function(server) ]]
--[[ 	local opts = { ]]
--[[ 		on_attach = require("config.lsp.handlers").on_attach, ]]
--[[ 		capabilities = require("config.lsp.handlers").capabilities, ]]
--[[ 	} ]]
--[[]]
--[[ 	 if server.name == "jsonls" then ]]
--[[ 	 	local jsonls_opts = require("config.lsp.settings.jsonls") ]]
--[[ 	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts) ]]
--[[ 	 end ]]
--[[]]
--[[ 	 if server.name == "sumneko_lua" then ]]
--[[ 	 	local sumneko_opts = require("config.lsp.settings.sumneko_lua") ]]
--[[ 	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts) ]]
--[[ 	 end ]]
--[[]]
--[[       if server.name == "pyright" then ]]
--[[ 	 	local pyright_opts = require("config.lsp.settings.pyright") ]]
--[[ 	 	opts = vim.tbl_deep_extend("force", pyright_opts, opts) ]]
--[[ 	 end ]]
--[[       if server.name == "jdtls" then ]]
--[[ 	 	local jdtls_opts = require("config.lsp.settings.jdtls") ]]
--[[ 	 	opts = vim.tbl_deep_extend("force", jdtls_opts, opts) ]]
--[[ 	 end ]]
--[[]]
--[[ 	-- This setup() function is exactly the same as lspconfig's setup function. ]]
--[[ 	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md ]]
--[[ 	server:setup(opts) ]]
--[[ end) ]]
