return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.2',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function() 
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        path_display = { truncate = 1 },
        prompt_prefix = '   ',
        selection_caret = '  ',
        layout_config = {
          prompt_position = 'top',
        },
        sorting_strategy = 'ascending',
        mappings = {
          i = {
            ['<C-[>'] = actions.close,
            ["<C-j>"] = {
              actions.move_selection_next, type = "action",
              opts = { nowait = true, silent = true }
            },
            ["<C-k>"] = {
              actions.move_selection_previous, type = "action",
              opts = { nowait = true, silent = true }
            },
          },
          n = {
            ['<C-[>'] = actions.close,
            ["j"] = {
              actions.move_selection_next, type = "action",
              opts = { nowait = true, silent = true }
            },
            ["k"] = {
              actions.move_selection_previous, type = "action",
              opts = { nowait = true, silent = true }
            },
          },
        },
        file_ignore_patterns = { '.git/', 'dist/', 'node%_modules/' },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        buffers = {
          previewer = false,
          layout_config = {
            width = 80,
          },
        },
        oldfiles = {
          prompt_title = 'History',
        },
        lsp_references = {
          previewer = false,
        },
      },
    })
  end
}
