local map = vim.keymap.set
vim.g.mapleader = " "

-- Save current file
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file", remap = true })

-- ESC pressing jk or lk
map("i", "jk", "<ESC>", { desc = "jk to esc", noremap = true })

-- Quit Neovim
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit Buffer/Neovim", remap = true })

-- Increment/decrement
map("n", "+", "<C-a>", { desc = "Increment numbers", noremap = true })
map("n", "-", "<C-x>", { desc = "Decrement numbers", noremap = true })

-- Select all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all", noremap = true })

-- Indenting
map("v", "<", "<gv", { desc = "Indenting", silent = true, noremap = true })
map("v", ">", ">gv", { desc = "Indenting", silent = true, noremap = true })

-- New tab
map("n", "te", ":tabedit")

-- Split window
map("n", "<leader>sh", ":split<Return><C-w>w", { desc = "Split horizontal", noremap = true })
map("n", "<leader>sv", ":vsplit<Return><C-w>w", { desc = "Split vertical", noremap = true })

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>", { desc = "Navigate up" })
map("n", "<c-j>", ":wincmd j<CR>", { desc = "Navigate down" })
map("n", "<c-h>", ":wincmd h<CR>", { desc = "Navigate left" })
map("n", "<c-l>", ":wincmd l<CR>", { desc = "Navigate right" })

-- Resize window
map("n", "<C-Up>", ":resize -3<CR>")
map("n", "<C-Down>", ":resize +3<CR>")
map("n", "<C-Left>", ":vertical resize -3<CR>")
map("n", "<C-Right>", ":vertical resize +3<CR>")

-- Bufferline
map("n", "<S-l>", ":bnext<cr>", { desc = "Move to next tab", noremap = true })
map("n", "<S-h>", ":bprevious<cr>", { desc = "Move to previous tab", noremap = true })


local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<leader>co", "gtc", { desc = "Comment line", noremap = false })
api.nvim_set_keymap("v", "<leader>co", "goc", { desc = "Comment block", noremap = false })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files", noremap = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Comment line", noremap = true })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Comment line", noremap = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Comment line", noremap = true })

