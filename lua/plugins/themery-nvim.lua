return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "kanagawa-wave",
        "kanagawa-dragon",
        "kanagawa-lotus",
        "tokyonight-storm",
        "tokyonight-moon",
        "tokyonight-night",
        "tokyonight-day",
        "catppuccin-mocha",
        "catppuccin-latte",
        "catppuccin-frappe",
        "catppuccin-macchiato",
        "rose-pine-main",
        "rose-pine-moon",
        "rose-pine-dawn",
        "nordic",
      },
    })
  end,
}
