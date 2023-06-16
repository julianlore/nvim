return {
  {
    'johnfrankmorgan/whitespace.nvim',
        config = function()
          require('whitespace-nvim').setup({
          -- configuration options and their defaults

          -- `highlight` configures which highlight is used to display
          -- trailing whitespace
          highlight = 'DiffDelete',

          -- `ignored_filetypes` configures which filetypes to ignore when
          -- displaying trailing whitespace
          ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help' },
          })
          -- remove trailing whitespace with a keybinding
          vim.keymap.set('n', '<Leader>t', require('whitespace-nvim').trim)
        end,
  },
  {
    'ggandor/leap.nvim',
      config = function()
        require('leap').add_default_mappings()
      end,
  },
  {
    'windwp/nvim-autopairs',
      config = function ()
        require('nvim-autopairs').setup {}
      end
  },
  {
    'HiPhish/nvim-ts-rainbow2'
  },
  {
  "smartpde/telescope-recent-files",
  config = function()
    require("telescope").load_extension("recent_files")
  end,
  },
  { 'jose-elias-alvarez/null-ls.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'renerocksai/telekasten.nvim',
      config = function ()
        require('telekasten').setup({
          home = os.getenv("TELEKASTEN_DIR"),
          dailies = os.getenv("TELEKASTEN_DAILIES_DIR"),
          auto_set_filetype = false,
          dailies_create_nonexisting = false,
          subdirs_in_links = false,
      })
      end,
      dependencies = { 'nvim-telescope/telescope.nvim' }
  },
  { 'ixru/nvim-markdown' },
  { 'ahmedkhalf/project.nvim',
      config = function()
        require('project_nvim').setup {
        require('telescope').load_extension('projects')
      }
      end
  },
}
