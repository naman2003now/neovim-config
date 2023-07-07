local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.register({
  ["f"] = {
    name = "Find through telescope", 
    a = { "<cmd>Telescope find_files<cr>", "Find all files" },
    f = { "<cmd>Telescope git_files<cr>", "Find files in project" }
    s = { "<cmd>Telescope spell_suggest<cr>", "Spelling suggestions" }
  }
}, { mode = "n", prefix = "<leader>" })
