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

