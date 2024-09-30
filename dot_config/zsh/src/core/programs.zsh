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
else
  echo 'zellij: command not found'
fi

if (( $+commands[atuin] )); then
  eval "$(atuin init zsh)"
else
  echo 'atuin: command not found'
fi

if (( $+commands[fzf] )); then
  eval "$(fzf --zsh)"
else
  echo 'fzf: command not found'
fi

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
else
  echo 'zoxide: command not found'
fi

if (( $+commands[starship] )); then
  eval "$(starship init zsh)"
else
  echo 'starship: command not found'
fi

if (( $+commands[eza] )); then
  alias ls="eza --sort=name --grid --long --classify=automatic --dereference --icons=automatic --group-directories-first --group"
  alias la="eza --sort=name --grid --long --classify=automatic --dereference --icons=automatic --group-directories-first --group --all"
  alias lf="eza --sort=name --grid --long --classify=automatic --dereference --icons=automatic --group-directories-first --group --only-files"
  export EZA_GRID_ROWS=10
else
  echo 'eza: command not found'
fi
  
if (( $+commands[lazygit] )); then
  alias lg="lazygit"
else
  echo 'lazygit: command not found'
fi

