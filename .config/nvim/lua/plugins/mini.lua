-- [[ https://github.com/echasnovski/mini.nvim ]]
-- Collection of various small independent plugins/modules

return {
  {
    "echasnovski/mini.nvim",
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require("mini.ai").setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require("mini.surround").setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim

      -- Comment lines
      require("mini.comment").setup()

      -- Visualize and work with indent scope
      require("mini.indentscope").setup()

      -- Move any selection in any direction
      require("mini.move").setup({
        mappings = {
          -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          down = "<M-)>",
          up = "<M-(>",

          -- Move current line in Normal mode
          line_down = "<M-)>",
          line_up = "<M-(>",
        },
      })

      -- Minimal and fast autopairs
      require("mini.pairs").setup()

      -- Split and join arguments
      require("mini.splitjoin").setup()

      -- Fast and flexible start screen
      require("mini.starter").setup()

      -- Minimal and fast statusline modue with opinionated default look
      require("mini.statusline").setup()

      -- Minimal and fast tabline showing listed buffers
      require("mini.tabline").setup()
    end,
  },
}
