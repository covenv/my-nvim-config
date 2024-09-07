-- ~/.config/nvim/lua/plugins/mini.lua
return {
  {
    "echasnovski/mini.indentscope",
    version = false,
    config = function()
      require("mini.indentscope").setup({
        -- Add any custom configuration options here
        -- For example, you can disable certain features
        draw = {
          delay = 0,
          animation = require("mini.indentscope").gen_animation.none(),
        },
      })
    end,
  },
}
