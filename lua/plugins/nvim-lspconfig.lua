local lspconfig = require("lspconfig")

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
          cmd = { os.getenv("HOME") .. "/.asdf/shims/rubocop", "--lsp", "--stderr", "--fail-level", "fatal" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
      },
    },
  },
}
