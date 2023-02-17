vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  prefer_startup_root = false,
  respect_buf_cwd = true,
  sync_root_with_cwd = true,
  tab = {
      sync = {
          open = true,
          close = true,
          ignore = {},
      },
  },
  renderer = {
    group_empty = true,
  },
  actions = {
      open_file = {
          quit_on_open = true,
      },
  },
}) 
