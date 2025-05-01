Another nvim config

## Project Structure

- **`init.lua`**: The entry point. Sets core options and bootstraps Lazy.nvim to load plugins.
- **`lua/`**:
  - **`options.lua`**: Global Neovim settings (e.g., indentation, clipboard, UI tweaks).
  - **`keymaps.lua`**: General key mappings (e.g., `<leader>?` to trigger Which-Key).
  - **`autocmds.lua`**: Autocommands (e.g., highlight yanked text).
  - **`custom/plugins/`**: Plugin specifications and configurations:
    - `autoformat.lua`: Configures `conform.nvim` for formatting.
    - `colorschemes.lua`: Defines the active color scheme.
    - `completion.lua`: Sets up `blink.cmp` for autocompletion.
    - `lsp.lua`: Configures LSP servers and Mason installations.
    - `oil.lua`: Configures Oil.nvim for file navigation.
    - `treesitter.lua`: Configures Tree-sitter parsers.
    - `which_key.lua`: Configures Which-Key for keybinding discovery.
- **`after/ftplugin/`**: (Optional) Language-specific settings (e.g., `python.lua` for Python tweaks).

## File Organization

- **Options**: Global settings live in `options.lua` for easy tweaking.
- **Keybindings**: General mappings are in `keymaps.lua`; plugin-specific mappings are in their respective plugin config files (e.g., `oil.lua` for Oil.nvim).
- **Plugins**: Each plugin has its own file in `lua/custom/plugins/` for clarity and modularity.

## Maintaining Language Support

To keep LSP, formatter, and Tree-sitter configurations in sync:
1. **Tree-sitter**: Add parsers to `ensure_installed` in `treesitter.lua`.
2. **LSP**: Add servers to the `servers` table in `lsp.lua` and update Mason’s `ensure_installed`.
3. **Formatters**: Add to `formatters_by_ft` in `autoformat.lua`.
- **Why it matters**: Misaligned configs can lead to missing features (e.g., no formatting for a language with an active LSP). Manual syncing ensures everything works together.

## Installation

1. Clone this repo to `~/.config/nvim`.
2. Open Neovim to install plugins via Lazy.nvim.
3. Run `:Mason` to install LSP servers and tools.
