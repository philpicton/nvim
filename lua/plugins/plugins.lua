return {
  { "nvim-tree/nvim-web-devicons" },
  { "ryanoasis/vim-devicons", opt = true },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
      options = {
        buffer_close_icon = "☠️",
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
  { 'fedepujol/move.nvim' },
  -- git commands, :Git whatever
  { "tpope/vim-fugitive" },
  -- git signs in gutter
  {
    'lewis6991/gitsigns.nvim', 
    config = function()
      require('gitsigns').setup()
    end
  },
  -- git blame 
  { "f-person/git-blame.nvim" },
  -- diff 
  { "sindrets/diffview.nvim" },
  -- markdown browser preview
  {
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  }
}
