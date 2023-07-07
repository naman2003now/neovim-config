local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.register({
  ["f"] = {
    name = "Find through telescope", 
    f = { "<cmd>Telescope find_files<cr>", "Find all files" },
    g = { "<cmd>Telescope git_files<cr>", "Find files in git repository" },
    s = { "<cmd>Telescope spell_suggest<cr>", "Spelling suggestions" }
  }
}, { mode = "n", prefix = "<leader>" })
