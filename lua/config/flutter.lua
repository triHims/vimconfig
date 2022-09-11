local status_ok, flutter = pcall(require, "flutter-tools")
print(status_ok)
if not status_ok then
    print("Could not load <flutter-tools>")
    return
end

local flutter_status_ok, lsp_config = pcall(require, "config.lsp.handlers")

if not flutter_status_ok then
    print("Could not load lsp")
    return
end

local M = {}

function M.setup()
    require("flutter-tools").setup {
        debugger = {
            enabled = false,
            run_via_dap = false,
        },
        outline = { auto_open = false },
        decorations = {
            statusline = { device = true, app_version = true },
        },
        widget_guides = { enabled = false, },
        dev_log = { enabled = false, open_cmd = "tabedit" },
        lsp = {
            color = {
                enabled = true,
                background = true,
                virtual_text = false,
            },
            settings = {
                showTodos = true,
                renameFilesWithClasses = "prompt",
                enableSnippets = true,
            },
            on_attach = lsp_config.on_attach,
            capabilities = lsp_config.capabilities,
        },
    }
end

--
--
--
--
M.setup()

print("Flutter loaded")
return M
