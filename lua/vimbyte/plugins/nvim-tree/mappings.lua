local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.register({
  e = { "<cmd>NvimTreeToggle<CR>", "Toggle explorer" }
}, { prefix = "<leader>", mode = "n" })
