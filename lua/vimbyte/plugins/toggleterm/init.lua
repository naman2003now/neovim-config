return {
  "akinsho/toggleterm.nvim",
  tag = '*',
  config = function()
    require("toggleterm").setup({
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      close_on_exit = true, -- close the terminal window when the process exits
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      direction = 'float',
      shell = vim.o.shell, 
    })
  end
}
