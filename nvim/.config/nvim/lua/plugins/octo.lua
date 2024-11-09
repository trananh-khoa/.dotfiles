-- [[ https://github.com/pwntester/octo.nvim ]]
-- Edit and review GitHub issues and pull requests

return {
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    event = { { event = "BufReadCmd", pattern = "octo://*" } },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      enable_builtin = true,
    },
    keys = {
      -- [[ https://github.dev/LazyVim/LazyVim ]]
      { "<leader>gi", "<cmd>Octo issue list<CR>", desc = "List Issues" },
      { "<leader>gI", "<cmd>Octo issue search<CR>", desc = "Search Issues" },
      { "<leader>gp", "<cmd>Octo pr list<CR>", desc = "List PRs" },
      { "<leader>gP", "<cmd>Octo pr search<CR>", desc = "Search PRs" },
      { "<leader>gr", "<cmd>Octo repo list<CR>", desc = "List Repos" },
      { "<leader>gS", "<cmd>Octo search<CR>", desc = "Search" },
      { "<leader>a", "", desc = "+assignee (Octo)", ft = "octo" },
      { "<leader>c", "", desc = "+comment/code (Octo)", ft = "octo" },
      { "<leader>l", "", desc = "+label (Octo)", ft = "octo" },
      { "<leader>i", "", desc = "+issue (Octo)", ft = "octo" },
      { "<leader>r", "", desc = "+react (Octo)", ft = "octo" },
      { "<leader>p", "", desc = "+pr (Octo)", ft = "octo" },
      { "<leader>v", "", desc = "+review (Octo)", ft = "octo" },
    },
  },
}
