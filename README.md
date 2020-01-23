# Dotfiles

Here are some of the most basic dotfiles that I use. This repo is a work in progress.

## Installation

I recommend cloning this repository into `~/.dotfiles`, but it will function
appropriately wherever you decide to store it.

### git

Add default "Author Name" and "Email"

```bash
cp preferences/gitconfig ~/.gitconfig
```

Or do it manually

```bash
$ git config --global user.name "Cyrus Stoller"
$ git config --global user.email cyrus.stoller@gmail.com
```

### vim

To install Vundler be sure to run:

```bash
$ git submodule init
$ git submodule update --remote
```

To install the vim plugins once vim has started:

```vim
:PluginUpdate
```

### Shell script order

```bash
$ ./install.sh
```
