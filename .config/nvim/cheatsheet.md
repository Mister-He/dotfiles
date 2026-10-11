# Keymaps

All keymaps defined in this Neovim config.

**Leader:** `<Space>` (`vim.g.mapleader = " "`)

Modes: `n` = normal, `i` = insert, `v`/`x` = visual, `t` = terminal, `c` = command.

---

## Core

Source: `lua/salar/core/keymaps.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<C-u>` | Scroll up half a page, centered |
| n | `<C-d>` | Scroll down half a page, centered |
| t | `<Esc>` | Leave terminal mode (`<C-\><C-n>`) |
| v | `J` | Move selected lines down |
| v | `K` | Move selected lines up |

### Windows

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>sv` | Split window vertically |
| n | `<leader>sh` | Split window horizontally |
| n | `<leader>se` | Make splits equal size |
| n | `<leader>sx` | Close current split |
| n | `<C-Up>` | Increase height |
| n | `<C-Down>` | Decrease height |
| n | `<C-Left>` | Narrower (vertical resize -4) |
| n | `<C-Right>` | Wider (vertical resize +4) |

### Buffers & tabs

| Mode | Key | Action |
| --- | --- | --- |
| n | `<Tab>` | Go to next buffer |
| n | `<S-Tab>` | Go to previous buffer |
| n | `<leader>x` | Close current buffer (`:bdelete`) |
| n | `<leader>n` | New tab |
| n | `<leader>h` | Move buffer left (bufferline) |
| n | `<leader>l` | Move buffer right (bufferline) |

### File explorer

| Mode | Key | Action |
| --- | --- | --- |
| n | `<C-n>` | Toggle file tree (`:NvimTreeToggle`) ¹ |
| n | `<leader>e` | Focus file tree (`:NvimTreeFocus`) |

¹ `lua/salar/core/keymaps.lua` maps `<C-n>` to `:Ex<CR>`, but `lua/salar/plugins/nvim-tree.lua` overrides it with `:NvimTreeToggle<CR>`.

### Telescope (LSP actions)

Source: `lua/salar/core/keymaps.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>ci` | LSP incoming calls |
| n | `<leader>co` | LSP outgoing calls |
| n | `<leader>ch` | LSP implementations |
| n | `<leader>cu` | LSP references |

### Theme

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>ts` | Select theme |
| n | `<leader>tn` | Next theme |
| n | `<leader>tp` | Previous theme |

### R console layout

Source: `lua/salar/core/keymaps.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>rJ` | R console below (12 lines) |
| n | `<leader>rL` | R console right (equal width) |

---

## Telescope

Source: `lua/salar/plugins/telescope.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>ff` | Fuzzy find files |
| n | `<leader>fw` | Live grep in cwd |
| n | `<leader>fs` | Find document symbols |
| n | `<leader>fc` | Find string under cursor in cwd |

Picker (insert mode) mappings:

| Mode | Key | Action |
| --- | --- | --- |
| i | `<C-k>` | Move selection previous |
| i | `<C-j>` | Move selection next |
| i | `<C-q>` | Send selected to quickfix list and open it |
| i | `<C-t>` | Open selection in Trouble |

---

## LSP (on attach)

Source: `lua/salar/plugins/lsp/lspconfig.lua` (buffer-local, set on `LspAttach`)

| Mode | Key | Action |
| --- | --- | --- |
| n | `gR` | Show LSP references |
| n | `gD` | Go to declaration |
| n | `gd` | Go to definition |
| n | `gi` | Show LSP implementations |
| n | `gt` | Show LSP type definitions |
| n, v | `<leader>ca` | Code action |
| n | `<leader>rn` | Rename symbol |
| n | `<leader>D` | Show buffer diagnostics |
| n | `<leader>d` | Show line diagnostics |
| n | `[d` | Go to previous diagnostic |
| n | `]d` | Go to next diagnostic |
| n | `K` | Show documentation under cursor |
| n | `<leader>rs` | Restart LSP |

---

## Completion (nvim-cmp)

Source: `lua/salar/plugins/nvim-cmp.lua`

| Mode | Key | Action |
| --- | --- | --- |
| i | `<C-k>` | Select previous item |
| i | `<C-j>` | Select next item |
| i | `<C-b>` | Scroll docs up |
| i | `<C-f>` | Scroll docs down |
| i | `<C-Space>` | Trigger completion |
| i | `<C-e>` | Abort completion |
| i | `<CR>` | Confirm selected item |

---

## Debugging (nvim-dap)

Source: `lua/salar/plugins/dap.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>dc` | Continue / launch |
| n | `<leader>db` | Toggle breakpoint |
| n | `<leader>ds` | Step over |
| n | `<leader>di` | Step into |
| n | `<leader>do` | Step out |
| n | `<leader>dr` | Restart |
| n | `<leader>dt` | Terminate |

### DAP UI

Source: `lua/salar/plugins/dap-ui.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>du` | Toggle DAP UI |
| n | `<leader>dw` | Add watch expression |
| n | `<leader>dW` | Remove watch expression |
| n | `<leader>dC` | Clear watch expressions |

---

## R (R.nvim)

Source: `lua/salar/plugins/r.lua` (buffer-local on `on_filetype`)

| Mode | Key | Action |
| --- | --- | --- |
| n | `<CR>` | Send current line to R |
| v | `<CR>` | Send selection to R |

---

## Editing plugins

### EasyAlign

Source: `lua/salar/plugins/easy-align.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n, x | `ga` | Align text |

### Yazi (file manager)

Source: `lua/salar/plugins/yazi.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n, v | `<leader>yf` | Open yazi at the current file |
| n | `<leader>yd` | Open yazi in nvim's working directory |
| n | `<C-Up>` | Resume last yazi session |

Yazi window keymaps (`opts.keymaps`):

| Key | Action |
| --- | --- |
| `<f1>` | Show help |

### Obsidian

Source: `lua/salar/plugins/obsidian.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>ob` | Obsidian backlinks |
| n | `<leader>od` | Obsidian daily note |
| n | `<leader>ol` | Obsidian note links |
| n | `<leader>oo` | Open in Obsidian |
| n | `<leader>oq` | Obsidian quick switch |
| n | `<leader>os` | Search Obsidian notes |
| n | `<leader>ot` | Insert Obsidian template |
| n | `<leader>oT` | Obsidian table of contents |
| n | `<leader>oc` | Toggle checkbox (buffer-local, on note enter) |

Obsidian telescope picker mappings (`lua/salar/core/obsidian.lua`):

| Key | Action |
| --- | --- |
| `<C-x>` | New note |
| `<C-l>` | Insert link |
| `<C-x>` | Tag note |
| `<C-l>` | Insert tag |

### Render Markdown

Source: `lua/salar/plugins/render-markdown.lua`

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>om` | Toggle markdown render |

### rndr.nvim (image preview controls)

Source: `lua/salar/plugins/rndr.lua`

| Key | Action |
| --- | --- |
| `q` | Close preview |
| `R` | Rerender |
| `0` | Reset view |
| `h` | Rotate left |
| `l` | Rotate right |
| `k` | Rotate up |
| `j` | Rotate down |

---

## Dashboard (alpha-nvim)

Source: `lua/salar/plugins/alpha.lua`

| Key | Action |
| --- | --- |
| `n` | New file (`:ene`) |
| `f` | Find file (Telescope) |
| `e` | Toggle file explorer |
| `g` | Find word (live grep) |
| `q` | Quit Neovim |

---

## User commands (not keymaps)

Defined as `:commands` in the config; listed here for convenience.

| Command | Action | Source |
| --- | --- | --- |
| `:Theme [name]` | Select or set the active theme | `lua/salar/core/theme.lua` |
| `:ThemeNext` | Cycle to next theme | `lua/salar/core/theme.lua` |
| `:ThemePrev` | Cycle to previous theme | `lua/salar/core/theme.lua` |
| `:Skel` | Insert C/C++ file skeleton | `lua/salar/tools/skeleton.lua` |
| `:TypstPreview` | Preview Typst PDF via zathura | `lua/salar/tools/init.lua` |
| `:CppExtractDefinitions` | Extract inline class member definitions into `.cpp` | `lua/salar/tools/cpp_extract.lua` |
| `:CppExtractFunctionDefinition` | Extract current function definition into `.cpp` | `lua/salar/tools/cpp_extract.lua` |
| `:CppTrvCtr` | Generate memberwise constructor for current class | `lua/salar/tools/cpp_trivial_constructor.lua` |
---
