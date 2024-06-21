local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          cmd = { os.getenv("HOME") .. "/.asdf/shims/solargraph", "stdio" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
          settings = {
            solargraph = {
              autoformat = true,
              diagnostics = true,
            },
          },
        },
        rubocop = {
          cmd = { os.getenv("HOME") .. "/.asdf/shims/rubocop", "--lsp" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
        gleam = {
          cmd = { "gleam", "lsp" },
          filetypes = { "gleam" },
          root_dir = function(fname)
            return util.root_pattern("gleam.toml", ".git")(fname)
          end,
        },
      },
    },
  },
}
