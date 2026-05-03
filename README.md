# ⚡ Minimal Neovim Config

A **fast, minimal Neovim configuration** built for smooth development on low-resource systems (tested on CachyOS / Arch-based Linux).

---

## 🔌 Included Features

### 🎨 UI
- Catppuccin theme
- Lualine statusline
- File icons (devicons)

### 🔍 Navigation & Search
- Telescope (files, grep, buffers)
- Nvim-tree file explorer

### 🧠 LSP & Code Intelligence
- Native LSP (`nvim-lspconfig`)
- `clangd` enabled
- Hover, go-to definition, references, rename, code actions

### ⚡ Autocomplete
- `nvim-cmp`
- LSP completion source
- LuaSnip (snippet support)
- Autopairs

### 🧾 Formatting
- `conform.nvim`

### 🌿 Git
- Neogit (with Telescope + Diffview)

### 🖥️ Terminal
- ToggleTerm (floating terminal)

### ⌨️ Utilities
- which-key (keybinding helper)

---

## 📦 Plugin Manager

- Uses **lazy.nvim**

---

## 🚀 Installation

```bash
# Clone into Neovim config directory
git clone https://github.com/your-username/nvim-config ~/.config/nvim

# Open Neovim
nvim
```

---

## ⌨️ Keybindings

### 🔹 General
| Key | Action |
|-----|--------|
| `<leader>` | Space |
| `jk` | Exit insert mode |

---

### 📁 File Explorer
| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file tree |

---

### 🔍 Telescope
| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |

---

### 🖥️ Terminal
| Key | Action |
|-----|--------|
| `<leader>t` | Toggle terminal |
| `Esc` (in terminal) | Exit terminal mode |

---

### 🧠 LSP
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover docs |
| `<leader>cr` | Rename |
| `<leader>ca` | Code action |

---

### ⚙️ Git
| Key | Action |
|-----|--------|
| `<leader>gg` | Open Neogit |

---

### 🪟 Splits
| Key | Action |
|-----|--------|
| `<leader>sv` | Vertical split |
| `<leader>sh` | Horizontal split |

---

### ▶️ Run Code
| Key | Action |
|-----|--------|
| `<leader>r` | Compile & run C file |

---

## ⚙️ Editor Settings

- Relative + absolute line numbers
- Smart indentation
- 4-space tabs (expandtab enabled)
- Smooth diagnostics (virtual text + underline)

---

## 🧩 Plugins List

- catppuccin/nvim
- nvim-lualine/lualine.nvim
- nvim-tree/nvim-tree.lua
- nvim-tree/nvim-web-devicons
- nvim-telescope/telescope.nvim
- nvim-lua/plenary.nvim
- neovim/nvim-lspconfig
- hrsh7th/nvim-cmp
- hrsh7th/cmp-nvim-lsp
- L3MON4D3/LuaSnip
- windwp/nvim-autopairs
- stevearc/conform.nvim
- NeogitOrg/neogit
- sindrets/diffview.nvim
- akinsho/toggleterm.nvim
- folke/which-key.nvim

---


## 🛠️ Future Improvements (Optional)

- Treesitter for better syntax highlighting
- More LSP servers
- Git signs (if needed)
- Better completion sources

---

> Minimal, fast, and under your control.
