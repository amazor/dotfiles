# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

fpath=(${ZDOTDIR}/plugins/completions $fpath)
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

autoload -Uz compinit && compinit -i

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${ZDOTDIR}/plugins/powerlevel10k/.p10k.zsh ]] || source ~/.p10k.zsh
source ${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${ZDOTDIR}/aliases.zsh
_comp_options+=(globdots)		# Include hidden files.
source ${ZDOTDIR}/plugins/completion.zsh
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey -v
# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^E' edit-command-line

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

bindkey "^A" beginning-of-line
bindkey "^D" end-of-line

setopt beep notify

# Directory Stack
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.


source ${ZDOTDIR}/plugins/command-not-found.plugin.zsh
source ${ZDOTDIR}/plugins/powerlevel10k/powerlevel10k.zsh-theme
#source ${ZDOTDIR}/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh



source ${ZDOTDIR}/plugins/zsh-fzf-history-search.zsh
source ${ZDOTDIR}/plugins/sudo.zsh
source ${ZDOTDIR}/plugins/dirhistory.plugin.zsh

source ${ZDOTDIR}/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
