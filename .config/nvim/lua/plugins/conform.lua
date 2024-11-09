-- [[ https://github.com/stevearc/conform.nvim]]
-- Autoformatting

return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_format = "fallback" })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = true,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        local lsp_format_opt
        if disable_filetypes[vim.bo[bufnr].filetype] then
          lsp_format_opt = "never"
        else
          lsp_format_opt = "fallback"
        end
        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
      end,
      formatters_by_ft = {
        javascript = { "eslint_d" },
        json = { "yq" },
        kdl = { "kdlfmt" },
        lua = { "stylua" },
        markdown = { "markdownlint" },
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
        rust = { "rustfmt" },
        typescript = { "eslint_d" },
        tex = { "latexindent" },
        toml = { "taplo" },
        yaml = { "yq" },
        -- Use the "*" filetype to run formatters on all filetypes.
        ["*"] = { "codespell", "trim_whitespace" },
      },
    },
  },
}
