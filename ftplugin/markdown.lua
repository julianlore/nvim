-- Call insert link automatically when we start typing a link for markdown buffers only
vim.keymap.set("i", "i[", "<cmd>Telekasten insert_link<CR>", { buffer = true } )
vim.keymap.set("i", "p[", "<cmd>Telekasten insert_link<CR>", { buffer = true } )
