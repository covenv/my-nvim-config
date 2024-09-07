return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        -- Add any custom configuration options here
        -- For example, you can enable fast_wrap, disable certain rules, etc.
        fast_wrap = {},
        disable_filetype = { "TelescopePrompt", "vim" },
      })
    end,
  },
}
