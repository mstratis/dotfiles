# PS1 (shell prompt)
export PS1="\[\033[0;37m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

# Aliases
alias reporoot='cd $(git rev-parse --show-toplevel)'

# Git completion
source ~/bin/git-completion.bash
