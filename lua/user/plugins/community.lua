local prefix = "<leader>u"
local utils = require "astronvim.utils"
return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
  },
  -- { import = "astrocommunity.color.transparent.nvim" },
  {
  "xiyaowong/transparent.nvim",
  lazy = false,
  opts = {
    -- table: default groups
    groups = {
      "Normal",
      "NormalNC",
      "Comment",
      "Constant",
      "Special",
      "Identifier",
      "Statement",
      "PreProc",
      "Type",
      "Underlined",
      "Todo",
      "String",
      "Function",
      "Conditional",
      "Repeat",
      "Operator",
      "Structure",
      "LineNr",
      "NonText",
      "SignColumn",
      "CursorLineNr",
      "EndOfBuffer",
    },
    -- table: additional groups that should be cleared
    extra_groups = {
      "NormalFloat",
      "NvimTreeNormal",
      "NeoTreeNormal",
      "NeoTreeFloatBorder",
      "NeoTreeNormalNC",
    },
    -- table: groups you don't want to clear
    exclude_groups = {},
  },
  keys = {
    { prefix .. "T", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
  },
},
   {
    "quarto-dev/quarto-nvim",
    ft = { "quarto", "qmd" },
    opts = {},
    dependencies = {
      { "hrsh7th/nvim-cmp" },
      { "jmbuhr/otter.nvim" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      local ensure_installed = {
        "r",
        "python",
        "markdown",
        "markdown_inline",
        "julia",
        "bash",
        "yaml",
        "lua",
        "vim",
        "query",
        "vimdoc",
        "latex",
        "html",
        "css",
      }
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, ensure_installed)
      end
    end,
},

-- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
