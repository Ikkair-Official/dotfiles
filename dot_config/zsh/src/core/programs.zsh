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
