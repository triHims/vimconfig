local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = {"java","python", "c", "lua", "rust" ,"clojure","dart","cpp"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },
    autopairs = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>vn",
      node_incremental = "<leader>vr",
      scope_incremental = "<leader>vc",
      node_decremental = "<leader>vm",
    },
  },
}
