local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.keymap.set

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
keymap("n", "<S-h>", "^", opts)
keymap("n", "<S-l>", "$", opts)

-- visual --
keymap("v", "<S-h>", "^", opts)
keymap("v", "<S-l>", "$", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-j>", ":bnext<CR>", opts)
keymap("n", "<S-k>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- bufferline --
keymap("n", "<leader>bk", ":bd<cr>", { noremap = true, silent = true, desc = "[b]utter [k]ill " })

-- nvim-tree --
-- keymap("n", "<A-m>", ":NvimTreeToggle<CR>", opts)

-- toggleterm --
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
--vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

--file tree--
keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

--debugger--

--Translate--
-- keymap("n", "<leader>mm", ":TranslateW<CR>", opts)
-- keymap("v", "<leader>mm", ":TranslateW<CR>", opts)

--neory--
-- keymap("n", "<leader>on", ":Neorg workspace notes<CR>", opts)
-- keymap("n", "<leader>ol", ":Neorg workspace list_todo<CR>", opts)
-- keymap("n", "<leader>oq", ":Neorg return<CR>", opts)

--FTerm--

--notice--
-- keymap("n", "<leader>n", ':lua require("notify").dismiss()<CR>', opts)

--termainl--
keymap("n", "<leader>e", "<cmd>Joshuto<CR>", opts)
--lsp

--code run
keymap("n", "<f5>", ":AsyncTask file-run<CR>", opts)
keymap("n", "<f9>", ":AsyncTask file-build<CR>", opts)

--reload config
keymap ("n", "<leader>hr", "<cmd>source<CR>", {noremap = true, silent = true, desc = "reload config"})
