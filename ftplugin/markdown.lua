-- Call insert link automatically when we start typing a link for markdown buffers only
vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>", { buffer = true } )
