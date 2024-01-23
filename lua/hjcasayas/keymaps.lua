vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set({"i", "v"}, "jk", "<ESC>") -- exit insert mode with jk 
keymap.set({"i", "v"}, "ii", "<ESC>") -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<leader>wqa", ":wqa<CR>") -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
keymap.set("n", "<leader>qqa", ":qa!<CR>") -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>") -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<leader>shh", "<C-w>-") -- make split window height shorter
keymap.set("n", "<leader>shk", "<C-w>+") -- make split windows height taller
keymap.set("n", "<leader>swl", "<C-w>>5") -- make split windows width bigger 
keymap.set("n", "<leader>swh", "<C-w><5") -- make split windows width smaller

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- Stay in indent mode
keymap.set("v", "H", "<gv^", {})
keymap.set("v", "L", ">gv^", {})

-- Move text up and down
keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})
keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})

