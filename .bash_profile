# PS1 (shell prompt)

export PS1="\[\033[0;37m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
