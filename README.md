#Dotfiles, bro

These are my dotfiles. Many of these settings work best with the OS X Homebrew terminal theme.

##Setup

Run this:

```sh
git clone https://github.com/hodgesmr/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
ruby script/setup.rb
```

This will copy the dotfiles into your home directory so that everything is set up nicely. Heads up: it is destructive. That means it will overwrite any of your current dotfiles with conflicting names.

##.gitconfig

Since you're not me, you probably want to update the name and email values in .gitconfig. If you run the setup script, it will guide you through that.

##A Matt Hodges project

Made by [@hodgesmr](http://twitter.com/hodgesmr).
