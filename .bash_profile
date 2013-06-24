# PS1 (shell prompt)
export PS1="\[\033[0;37m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

# Sencha (only works for Cardinal account)
export PATH=/Users/mstratis/bin/Sencha/Cmd/3.0.0.250:$PATH
export SENCHA_CMD_3_0_0="/Users/mstratis/bin/Sencha/Cmd/3.0.0.250"

# Aliases
alias reporoot='cd $(git rev-parse --show-toplevel)'
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'
alias autosave='/usr/local/lib/node_modules/autosave/bin/autosave'
alias showHidden='ls -ld .??*'
alias finderShowHiddenFiles='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias finderHideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias setupDotfiles='ruby ~/.dotfiles/script/setup.rb'

# Git completion
source ~/bin/git-completion.bash
