vim.g.mapleader = " "

-- Project navigation
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })

-- Pane/buffer management
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })

-- Navigate panes using Opt
vim.keymap.set('n', '<M-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<M-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<M-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<M-k>', '<C-w>k', { noremap = true, silent = true })

-- Copy to system clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })

-- Make c and d use the black hole register
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true, silent = true })

-- Integration with native MacOS shortcuts
-- Uses intermediate iTerm2 shortcuts (e.g., Cmd-s -> F6)
vim.api.nvim_set_keymap("n", "<F6>", ":w<CR>", { noremap = true })  -- Save (n)
vim.api.nvim_set_keymap("i", "<F6>", "<Esc>:w<CR>a", { noremap = true })  -- Save (i)
vim.api.nvim_set_keymap("i", "<F7>", "<C-w>", { noremap = true })  -- Delete one word (i)
vim.api.nvim_set_keymap("i", "<F8>", "<C-u>", { noremap = true })  -- Delete line (i)

-- Formatting
vim.keymap.set({ "n", "v" }, "<leader>F", function()
    require("conform").format({ lsp_fallback = true })
end, { desc = "Format file or selection" })
