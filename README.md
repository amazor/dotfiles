# Amir's Dotfiles
This repository will be updated overtime. I plan on adding more configurations (such as git and ssh).
I also plan on adding a script in order to make it easier to deploy.

Some other things i might consider adding:
- GNU stow for symbolic links to the home directory
I am unsure if I want to clutter my home directory with a bunch of symbolic links, even if they are hidden files.
currently to deploy i change the default directory being used to look for configurations using the .zshenv file

## Dependencies
Right now there are only two application configurations being saved

### zsh
Download zsh using a package manager. I am using powerlevel10k for the theme.
This theme might have character that are not supported by default. 
You must download a font that supports the character set. I use the nerdfont "firacode". Look up how to install nerdfonts.

### nvim/lazyvim
I want to start learning neovim, and i decided to use the theme "lazyvim". I am still learning about this application, but in order to make it portable, i added the configurations to these dotfiles.

## Installation
You may install the this configuration by using the following commands:

first, clone the repository into your home directory, in this case i am calling this directory ".config":
```sh
git clone https://github.com/amazor/dotfiles --recurse-submodules ~/.config
```

then, make a symbolic link of the .zshenv file to your home directory:
```sh
ln -s ~/.config/zsh/.zshenv ~/.zshenv
```

Finally, tell change your default shell to use zsh:
```sh
chsh -s zsh
```
