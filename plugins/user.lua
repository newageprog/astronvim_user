return {
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function() vim.keymap.set("n", "C-F9", "<Plug>MarkdownPreview", { "MarkdownPreview" }) end,
  },
  {
    "tigion/nvim-asciidoc-preview",
    ft = { "asciidoc" },
    -- opts = {},
  },
  -- {
  --   "Wansmer/langmapper.nvim",
  --   lazy = false,
  --   priority = 1, -- High priority is needed if you will use `autoremap()`
  --   config = function()
  --     require("langmapper").setup {--[[ your config ]]
  --     }
  --   end,
  -- },
  -- "iamcco/markdown-preview.nvim",
  -- {
  -- init = function() vim.g.mkdp_filetypes = { "markdown" } end,
  -- config = function()
  --   vim.keymap.set("n", "<Leader>mp", "<Plug>MarkdownPreview", { "MarkdownPreview" })
  -- end,
  -- }
  --
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
