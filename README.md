# Nvim-palenight.lua
<!-- ![nvim-palenight.lua][screenshot] -->

A dark color scheme for Neovim based off [this great palenight plugin](https://github.com/drewtempelmeyer/palenight.vim)

## Notices

- The background is #1b1e2b and not #292d3e
- This plugin works better with [vim-polyglot](https://github.com/sheerun/vim-polyglot)
- I don't want to bother with non true color and terminal colors because don't use a tty, i use the good old [alacritty](https://github.com/alacritty/alacritty)
- I want to port most of what i can from vimscript to lua
- Thanks again [@drewtempelmeyer](https://github.com/drewtempelmeyer)

## Installation
Using [vim-plug](https://github.com/junegunn/vim-plug) (modify this to work with your Vim package manager of choice):

```vim
Plug 'kyazdani42/nvim-palenight.lua'
```

## Setup 

You'll need to enable `termguicolors` for the theme to work properly
```vim
set termguicolors
colorscheme palenight
```

To configure lightline, add the following line:
```vim
let g:lightline = { 'colorscheme': 'palenight' }
```

<!-- Italics will be enabled by default, if you wan't to remove them -->
<!-- ```vim -->
<!-- let g:nvim_palenight_italics=0 -->
<!-- ``` -->
