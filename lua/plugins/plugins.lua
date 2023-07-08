return {
  { "nvim-tree/nvim-web-devicons" },
  { "ryanoasis/vim-devicons" },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
      options = {
        buffer_close_icon = "󰖭",
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  -- move lines up and down
  { "fedepujol/move.nvim" },
  -- git commands, :Git whatever
  { "tpope/vim-fugitive" },
  -- git signs in gutter
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  -- git blame
  { "f-person/git-blame.nvim" },
  -- diff
  { "sindrets/diffview.nvim" },

  -- auto html tags
  { "windwp/nvim-ts-autotag" },

  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  { "ThePrimeagen/vim-be-good" },
}
