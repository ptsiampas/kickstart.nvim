-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
        follow_current_file = {
          enabled = true,
        },
      },
      --- More configurations can be placed here
    }
    -- Keymap for toggling the Neo-Tree file explorer
    vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
  end,
}
