require "config.plugin"
--Load vim configs
local CONFIGDIR = "~/.config/nvim/"
local VIMNATIVECONFIG = string.format('source %sconfig.vim',CONFIGDIR)
vim.cmd(VIMNATIVECONFIG)
vim.opt.shortmess:append "c"

require "config.keybindings"
require "config.colors"
require "config.cmp"
require "config.lsp"
require "config.treesitter"
require "config.comment"
require "config.gitsigns"
require "config.nvim-tree"
require "config.flutter"



