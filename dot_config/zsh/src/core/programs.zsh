if (( $+commands[zellij] )); then
  if [[ -n $XDG_CURRENT_DESKTOP ]] && [[ -z "$ZELLIJ" ]]; then
    if zellij list-sessions | rg -q 'staff.*EXITED'; then
      zellij attach staff
    elif zellij list-sessions | rg -q 'staff'; then
      zellij
    else
      zellij attach -c staff
    fi
  fi
fi

if (( $+commands[atuin] )); then
  eval "$(atuin init zsh)"
fi

if (( $+commands[fzf] )); then
  eval "$(fzf --zsh)"
fi

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi

if (( $+commands[starship] )); then
  eval "$(starship init zsh)"
fi

if (( $+commands[eza] )); then
  alias ls="eza --sort=name --grid --long --classify=automatic --dereference --icons=automatic --group-directories-first --group"
  alias la="eza --sort=name --grid --long --classify=automatic --dereference --icons=automatic --group-directories-first --group --all"
  alias lf="eza --sort=name --grid --long --classify=automatic --dereference --icons=automatic --group-directories-first --group --only-files"
  export EZA_GRID_ROWS=10
fi
  
if (( $+commands[lazygit] )); then
  alias lg="lazygit"
fi

if (( $+commands[mpv] )); then
  mpve(){
    if [[ -z "$@" ]]; then
      echo 'Argument is empty'
    else
      command ls *."$@" | xargs -rd '\n' mpv --save-position-on-quit -fs
    fi
  }
  alias mpve=mpve
  mpvs(){
    if (( $+commands[fzf] )); then
      command ls -p | grep -v / | fzf --multi | xargs -rd '\n' mpv --save-position-on-quit -fs
    else
      echo 'fzf: command not found'
    fi
  }
  alias mpvs=mpvs
fi

if (( $+commands[nvim] )); then
  alias nv=nvim
fi
