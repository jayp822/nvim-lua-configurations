vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set spell")

vim.g.mapleader = " "

--Neotree Filesystem Navigation
vim.keymap.set("n", "<leader>a", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>d", ":Neotree filesystem reveal right<CR>", {})

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
