local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Legends 
--<D-key> stands for command in mac + key
--<C-key> stands for control/ctrl(windows/linux) in mac + key
--<A-key> stands for Alt in mac + key
--<M-key> stands for Alt in windows style keyboards + key
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",




-- Normal --
-- Better window navigation Ctrl [hjkl]
keymap("n","<C-k>",    "<C-w>k",{})
keymap("n","<C-j>",  "<C-w>j",{})
keymap("n","<C-h>",  "<C-w>h",{})
keymap("n","<C-l>", "<C-w>l",{})


-- Resize with Command [arrowkeys](bug: they get flipped)
keymap("n", "<D-Down>", ":resize +2<CR>", opts)
keymap("n", "<D-Up>", ":resize -2<CR>", opts)
keymap("n", "<D-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<D-Left>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
--keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down 
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("n", "<M-j>", ":m .+1<CR>==", opts)
keymap("n", "<M-k>", ":m .-2<CR>==", opts)

--[[ Sppecial ]]
keymap("v", "˝", ":m .+1<CR>==", opts)
keymap("v", "˚", ":m .-2<CR>==", opts)

-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<M-j>", ":move '>+1<CR>gv-gv", opts) --for others
keymap("x", "<M-k>", ":move '<-2<CR>gv-gv", opts) --For others
 --[[ Special  ]]
keymap("x", "˝", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)



--Commenting
-- Comment
keymap("n", "<M-/>",'<CMD>lua require("Comment.api").toggle.linewise()<CR>', opts)
keymap("n", "÷",'<CMD>lua require("Comment.api").toggle.linewise()<CR>', opts)
keymap("v", "<M-/>", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)
keymap("v", "÷", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)


keymap("i", "<C-h>", "<Plug>luasnip-next-choice", {})
keymap("i", "<C-l>", "<Plug>luasnip-prev-choice", {})

--NVIMTREE
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)


--LSP FORMAT COMMAND 
keymap("n", "<leader>bf", ":Format<cr>", opts)
--keymap("n", "<leader>e", ":Lex 30<cr>", opts)
