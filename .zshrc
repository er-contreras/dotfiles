# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -lA'
alias l='ls -CF'
alias ssp='systemctl suspend'
alias srb='systemctl reboot'
alias spo='systemctl poweroff'
alias chuser='sudo find . -user root -exec sudo chown $USER: {} +'
alias src='source ~/.zshrc'
alias n='nvim'

white="%F{7}"
bold="%B"
cyan="%F{39}"
reset="%f%b"

get_git_branch() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/ (\1)/p'
  fi
}

update_prompt() {
  PS1="${white}["
  PS1+="${cyan}%t"
  PS1+="${white} ] "
  PS1+="${white}= "
  PS1+="${white}{ "
  PS1+="${cyan}%~ "
  PS1+="${white}}"
  PS1+="${cyan}$(get_git_branch)"
  PS1+=$'\n'
  PS1+="${white} -> "
  PS1+="${reset}"
}

update_prompt

precmd() {
  update_prompt
}

export PS1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm bash_completion

# Added by `rbenv init` on Sat Mar 22 04:40:38 PM CST 2025
eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"
. "$HOME/.cargo/env"
