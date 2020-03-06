<!-- TODO: add screenshot -->
<!-- ![nvim-palenight.lua][screenshot] -->

A dark color scheme for Vim/Neovim based off [this great palenight plugin](https://github.com/drewtempelmeyer/palenight.vim)

## Notices

- I don't want to bother with non true color and terminal colors
- I don't use a tty, i use the good old [alacritty](https://github.com/alacritty/alacritty)
- I want to port most of what i can to lua
- There were some color choices that i didn't like and i had to manually change them in my configs.
- Thanks again [@drewtempelmeyer](https://github.com/drewtempelmeyer)

## Installation
Using [vim-plug][vimplug] (modify this to work with your Vim package manager of choice):

```vim
Plug 'kyazdani42/nvim-palenight.lua'
```

## Usage

In your wonderfully organized Neovim (`.config/nvim/init.vim`) configuration, place the following two lines:

```vim
set background=dark
colorscheme palenight
```

To configure lightline, add the following line:

```vim
let g:lightline = { 'colorscheme': 'palenight' }
```

### True Colors

You'll need to enable those for the theme to work properly
```vim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
```

### Italics

Italics will be enabled by default, if you wan't to remove them
```vim
let g:nvim_palenight_italics=0
```
