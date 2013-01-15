#Dotfiles

These are my dotfiles. Many of these settings work best with the OS X Homebrew terminal theme.

##Setup

Run this:

```sh
git clone https://github.com/hodgesmr/dotfiles.git ~/.dotfiles
ruby ~/.dotfiles/script/setup.rb
```

This will create symbolic links in your home directory to the dotfiles living in `~/.dotfiles` so that everything is set up nicely. Heads up: it is destructive. That means it will overwrite any of your current dotfiles or directories that have conflicting names.

##.gitconfig

Since you're not me, you probably want to update the name and email values in .gitconfig. If you run the setup script, it will guide you through that.

##Updates

Each managed file is symlinked to a corresponding file in `~/.dotfiles`. If you add new files, don't forget to add them to the script.

##A Matt Hodges project

Made by [@hodgesmr](http://twitter.com/hodgesmr).
