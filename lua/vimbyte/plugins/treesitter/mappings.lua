local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.register({
  ["<CR>"] = "Scope Selection",
  ["<S-CR>"] = "Decrement Scope Selection",
})

wk.register({
  ["<leader>s"] = {
    name = "select", -- optional group name
    s = "Increment Scope",
  },
}, { mode = "v" })
