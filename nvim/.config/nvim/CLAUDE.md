# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture

This is a Neovim configuration built on top of NvChad v2.5, using the lazy.nvim plugin manager. The configuration is structured as follows:

- **Base Framework**: NvChad provides the foundation with sensible defaults and UI components
- **Plugin Management**: lazy.nvim handles all plugin loading with lazy loading enabled by default
- **Configuration Structure**: 
  - `init.lua`: Entry point that bootstraps lazy.nvim and loads the configuration
  - `lua/chadrc.lua`: NvChad-specific configuration including theme (catppuccin) and custom functions
  - `lua/configs/`: Contains configuration files for specific tools (LSP, DAP, conform, etc.)
  - `lua/plugins/`: Individual plugin specifications and configurations

## Key Features

### Language Support
- **C/C++ Development**: Configured with clangd LSP including clang-tidy integration
- **Custom Header/Source Switching**: `gh` keymap to toggle between .h and .cpp files (lua/chadrc.lua:25-38)
- **Treesitter**: Configured for C++ and YAML syntax highlighting

### AI Assistants (Currently Disabled)
Multiple AI coding assistants are configured but disabled:
- **Claude Code**: Native integration (lua/plugins/claudecode.lua) - currently `enabled = false`
- **Avante**: Advanced AI assistant with OpenAI integration (lua/plugins/avante.lua) - currently `enabled = false`  
- **CodeCompanion**: Alternative AI assistant (lua/plugins/codecompanion.lua) - currently `enabled = false`
- **Copilot**: GitHub Copilot integration available through both lua/plugins/copilot.lua and blink-cmp integration

### Completion System
- **Blink.cmp**: Fast completion engine (currently disabled) with Copilot integration
- **Source Priority**: Copilot > LSP > Path > Snippets > Buffer when blink.cmp is enabled

### Development Tools
- **Auto-formatting**: Custom script execution on file save (lua/mappings.lua:14-20) - runs `~/Development/efg_infrastructure_cea_terminals/formatFiles.sh`
- **Bookmarks**: vim-bookmarks integration with `<leader>bm` to view all bookmarks
- **Git Integration**: Gitsigns with `]c` and `[c` for hunk navigation
- **Telescope Extensions**: Custom keymaps for symbol search (`<leader>fs`) and live grep (`<leader>fd`)

### Performance Optimizations
- Extensive list of disabled built-in Vim plugins (lua/configs/lazy.lua:16-44)
- Lazy loading enabled by default for all plugins
- Treesitter configured with minimal language set

## Common Commands

### Plugin Management
```bash
# Update plugins
:Lazy update

# Check plugin status  
:Lazy
```

### LSP Operations
```bash
# Restart LSP
:LspRestart

# View LSP info
:LspInfo
```

### Custom Keymaps
- `gh`: Switch between header and source files (C/C++)
- `<leader>bm`: View all bookmarks via Telescope
- `<leader>fs`: Search workspace symbols under cursor
- `<leader>fd`: Live grep for word under cursor
- `]c` / `[c`: Navigate git hunks
- `;`: Enter command mode (remapped from `:`)
- `jk`: Exit insert mode

### AI Assistant Integration
To enable any of the AI assistants, change `enabled = false` to `enabled = true` in the respective plugin files:
- `lua/plugins/claudecode.lua` for Claude Code integration
- `lua/plugins/avante.lua` for Avante AI assistant
- `lua/plugins/codecompanion.lua` for CodeCompanion

## File Paths and Structure

Key configuration files:
- `lua/chadrc.lua`: Theme and NvChad-specific settings
- `lua/mappings.lua`: Custom keymaps and auto-commands
- `lua/configs/lspconfig.lua`: LSP server configurations
- `lua/configs/lazy.lua`: lazy.nvim settings and performance optimizations
- `lua/plugins/`: Individual plugin configurations

The configuration follows NvChad conventions where plugins are defined in separate files under `lua/plugins/` and imported automatically.