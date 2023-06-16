return {
  keymaps = {
    { '<F1>', "<Cmd>Legendary<CR>", description = "Legendary"},
    -- Keymaps for better default experience
    -- See `:help vim.keymap.set()`
    { '<Space>', '<Nop>', opts = { silent = true } },

    -- Remap for dealing with word wrap
    { 'k', "v:count == 0 ? 'gk' : 'k'", opts = { expr = true, silent = true } },
    { 'j', "v:count == 0 ? 'gj' : 'j'", opts = { expr = true, silent = true } },

    -- Telescope
    -- See `:help telescope.builtin`
    { '<leader><space>', "<Cmd>lua require('telescope').extensions.recent_files.pick()<CR>", description = '[ ] Find recently opened files' },
    { '<leader>/', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
        })
      end, description = '[/] Fuzzily search in current buffer' },
    { '<leader>sc', require('telescope.builtin').commands, description = '[S]earch [C]ommands' },
    { '<leader>sf', require('telescope.builtin').find_files, description = '[S]earch [F]iles' },
    { '<leader>sh', require('telescope.builtin').help_tags, description = '[S]earch [H]elp' },
    { '<leader>sw', require('telescope.builtin').grep_string, description = '[S]earch current [W]ord' },
    { '<leader>sg', require('telescope.builtin').live_grep, description = '[S]earch by [G]rep' },
    { '<leader>sd', require('telescope.builtin').diagnostics, description = '[S]earch [D]iagnostics' },

    -- Telekasten
    { '<leader>zz', "<cmd>Telekasten panel<CR>", description = "Telekasten Panel"},
    { '<leader>zf', "<cmd>Telekasten find_notes<CR>", description = "Telekasten [F]ind Notes"},
    { '<leader>zg', "<cmd>Telekasten search_notes<CR>", description = "Telekasten [G]rep Notes"},
    { '<leader>zd', "<cmd>Telekasten find_daily_notes<CR>", description = "Telekasten [D]aily Notes"},
    { '<leader>zb', "<cmd>Telekasten show_backlinks<CR>", description = "Telekasten [B]acklinks"},
    { '<leader>zi', "<cmd>Telekasten insert_link<CR>", description = "Telekasten [I]nsert Link" },
    { '<leader>z<CR>', "<cmd>Telekasten follow_link<CR>", description = "Telekasten Follow Link"},

    -- Diagnostics
    { '[d', vim.diagnostic.goto_prev, "Go to previous diagnostic message" },
    {']d', vim.diagnostic.goto_next, "Go to next diagnostic message" },
    {'<leader>e', vim.diagnostic.open_float, "Open floating diagnostic message" },
    {'<leader>q', vim.diagnostic.setloclist, "Open diagnostics list" },
  }
}
