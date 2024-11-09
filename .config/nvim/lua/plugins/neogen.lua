-- [[ https://github.com/danymat/neogen ]]
-- Annotation

return {
  {
    "danymat/neogen",
    config = true,
    version = "*",
    keys = {
      {
        "<leader>cd",
        function()
          require("neogen").generate({})
        end,
        desc = "Generate Neogen [D]ocumentation",
      },
    },
    opts = {
      enabled = true,
      snippet_engine = "luasnip",
    },
  },
}
