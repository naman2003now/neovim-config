local status_ok, terminal  = pcall(require, 'toggleterm.terminal')
local Terminal = terminal.Terminal

local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  count = 5,
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end


local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.register({
  ["t"] = {
    name = "Do something in the terminal", 
    g = { "<cmd>lua _lazygit_toggle()<CR>", "lazygit" },
  }
}, { mode = "n", prefix = "<leader>" })

vim.cmd [[
  " set
  autocmd TermEnter term://*toggleterm#*
  \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>


  " By applying the mappings this way you can pass a count to your
  " mapping to open a specific window.
  " For example: 2<C-t> will open terminal 2
  nnoremap <silent><c-\> <Cmd>exe v:count1 . "ToggleTerm"<CR>
  inoremap <silent><c-\> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
  tnoremap <silent><c-\> <Esc><Cmd>ToggleTerm<CR>
]]

-- vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-\\>", "<cmd>close<CR>", {noremap = true, silent = true})
