local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
    return
end



require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").lazy_load({paths= "~/.config/nvim/snippets"})

