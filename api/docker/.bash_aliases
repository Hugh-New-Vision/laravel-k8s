# directory shortcuts
alias h='cd ~'
alias ..="cd .."
alias ...="cd ../.."

function artisan() {
    php artisan "$@"
}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# utility
alias c='clear'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# artisan
alias art="php artisan"
alias tinker="php artisan tinker"
alias tinkx="php artisan tinx"

# phpunit
alias phpunit='vendor/bin/phpunit'
alias pf="phpunit --filter"
alias pg="phpunit --group"

# phpspec
alias phpspec='vendor/bin/phpspec'

# codecept
alias codecept='vendor/bin/codecept'
