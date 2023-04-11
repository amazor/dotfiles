# ALIAS COMMANDS
alias ls="exa --icons --group-directories-first"
alias ll="exa --icons --group-directories-first -l"

alias grep='grep --color'
alias zsh-update-plugins="find \"$ZDOTDIR/plugins\" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

alias cp="cp -iv"
alias mv='mv -iv'
alias rm='rm -iv'

alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index} > /dev/null"; unset index # directory stack

alias ls='exa --group-directories-first'                                                          # ls
alias ll='exa -l --icons --group-directories-first'                                                # list, size, type, git
alias la='exa -la -a --icons --group-directories-first'
alias tree='exa --tree --icons'
alias tree-full='exa --tree -la --icons'
alias peek='exa --tree --level=2 --icons'

alias zshrc='${EDITOR} ${ZDOTDIR}/.zshrc '
alias zshrc-alias='${EDITOR} ${ZDOTDIR}/aliases.zsh'
