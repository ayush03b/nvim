-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

keymap.set("n", "<leader>pv", vim.cmd.exit)

----------------------
-- Plugin Keybinds
----------------------


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- telescope git commands (not on youtube nvim video)
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
--
-- keymap.set("n", "<leader>gg", ":LazyGit<CR>")

-- keymaps for file previews
-- keymap.set("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
-- keymap.set("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
-- keymap.set("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
-- keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
-- keymap.set("n", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })

-- keymap for trouble toggle
-- keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
-- keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
-- keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
-- keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
-- keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
-- keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- moves the selected test even in multiline
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<Leader><Tab>", ":bn<CR>")
keymap.set("n", "<Leader><S-Tab>", ":bp2<CR>")
keymap.set("n", "<Leader>b", ":buffers<CR>")

-- Explorer
keymap.set("n", "<leader>e", ":Ex<CR>")
