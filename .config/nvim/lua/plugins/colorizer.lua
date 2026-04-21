return {
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("colorizer").setup()
      vim.cmd("ColorizerAttachToBuffer")
    end,
  },
}
