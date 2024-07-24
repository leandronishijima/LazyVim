return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      rubocop = {
        command = os.getenv("HOME") .. "/.asdf/shims/rubocop --lsp",
      },
    },
  },
}
