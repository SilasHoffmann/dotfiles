#command history
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=2000
SAVEHIST=1000


# Enable colors and change prompt:
autoload -U colors && colors
PROMPT='%F{red}%n%F{yellow}@%F{green}%m%F{cyan}%F{blue}>%f '       #→

#file and folder colors
export LS_COLORS="di=01;34:fi=01;32"
alias ls='ls --color=auto'




#keybinds:

#strg + arrows/backspace
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
function backward-kill-partial-word {
  local WORDCHARS="${WORDCHARS//[\/.]/}"
  zle backward-kill-word "$@"
}
zle -N backward-kill-partial-word
bindkey '^H' backward-kill-partial-word

bindkey "\e[3~" delete-char







#tab auto complete
autoload -U compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots) #include hidden files in tab autocomplete





#Execution time
#preexec() {
#  timer=$(($(date +%s%0N)/1000000))
#}

#precmd() {
#  if [ $timer ]; then
#    now=$(($(date +%s%0N)/1000000))
#    elapsed=$(($now-$timer))
#    export RPROMPT="%F{cyan}${elapsed}ms"
#    unset timer
#  else #um die normale zeit immer anzuzeigen
#    export RPROMPT='%F{cyan}[%*]%f'
#  fi
#}



#---------------------Aliases:---------------------
#KDE Plasma starten
alias startplasma="/usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland"
alias startkde="/usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland"
#System-Update-Script ausführen
#alias update="/home/silas/Programs/update-system.sh"
#alias update-system="/home/silas/Programs/update-system.sh"
#Open manpages using bat
alias batman='man -P "bat -l man"'
alias bm='man -P "bat -l man"'









# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/silas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall






fastfetch --disk-folders "/"
TERMINAL=alacritty


#Hook zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


eval "$(starship init zsh)"
