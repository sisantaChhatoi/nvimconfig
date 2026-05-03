-- set leader key FIRST
vim.g.mapleader = " "

-- load lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  },

  -- UI
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-web-devicons" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- LSP
  { "neovim/nvim-lspconfig" },

  -- Autocomplete
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "windwp/nvim-autopairs" },


  -- Formatting
  { "stevearc/conform.nvim" },

  -- Git (light)
  {
   "NeogitOrg/neogit",
    dependencies = {
     "nvim-lua/plenary.nvim",
     "nvim-telescope/telescope.nvim",
     "sindrets/diffview.nvim",
  },
  
  config = function()
    require("neogit").setup({})
  end,
},

  -- Terminal
  { "akinsho/toggleterm.nvim" },

  -- Key helper
  { "folke/which-key.nvim" },

  -- file tree 
  { "nvim-tree/nvim-tree.lua" },


})

-- keybindings
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")

-- TERMINAL
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])           -- exit terminal mode

-- FILE EXPLORER (tree)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- FIND (telescope)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- LSP / CODE
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

-- RUN C FILE
vim.keymap.set("n", "<leader>r", ":w<CR>:!gcc % && ./a.out<CR>")

-- GIT (gitsigns - lightweight)
vim.keymap.set("n", "<leader>gg", ":Neogit<CR>")


-- SPLITS
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")

-- QUICK ESCAPE
vim.keymap.set("i", "jk", "<Esc>")

-- indentation support 

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--line number 
vim.opt.number = true         -- absolute line numbers
vim.opt.relativenumber = true -- relative numbers (VERY useful)


-- autocomplete setup 

require("nvim-autopairs").setup({})

-- LSP setup

vim.lsp.enable("clangd")

local cmp = require("cmp")

cmp.setup({

    mapping = cmp.mapping.preset.insert({

    ["<C-n>"] = cmp.mapping.select_next_item(),   -- next item
    ["<C-p>"] = cmp.mapping.select_prev_item(),   -- previous item

    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirm selection

    ["<C-Space>"] = cmp.mapping.complete(), -- manually trigger

  }),

  sources = {
    { name = "nvim_lsp" },
  }
})

-- UI
require("nvim-tree").setup({})

require("lualine").setup({
  options = {
    theme = "auto",
    section_separators = "",
    component_separators = "|",
  }
})

-- terminal 
require("toggleterm").setup()


-- error highlighting 


vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
})

--- cursor 
vim.opt.guicursor = "n-v-c:block,i-ci:ver25,r-cr:block"

--git  
vim.keymap.set("n", "<leader>gg", ":Neogit<CR>")
