
# Home and End key
bindkey -M emacs "^[[H" beginning-of-line
bindkey -M emacs "^[[F" end-of-line
bindkey -M viins "^[[H" beginning-of-line
bindkey -M viins "^[[F" end-of-line
bindkey -M vicmd "^[[H" beginning-of-line
bindkey -M vicmd "^[[F" end-of-line

# Ctrl Left and Right Key
bindkey -M emacs "^[[1;5D" vi-backward-word
bindkey -M emacs "^[[1;5C" vi-forward-word-end
bindkey -M viins "^[[1;5D" vi-backward-word
bindkey -M viins "^[[1;5C" vi-forward-word-end
bindkey -M vicmd "^[[1;5D" vi-backward-word
bindkey -M vicmd "^[[1;5C" vi-forward-word-end

# Ctrl Backspace to delete a word
bindkey -M emacs "^H" backward-kill-word
bindkey -M viins -r "^H"
bindkey -M viins "^H" backward-kill-word

# Esc to vicmd mode from emacs
# bindkey -M emacs "\e" vi-cmd-mode

# To use normal backspace in vi insert
# bindkey -M viins "\b" backward-delete-char
