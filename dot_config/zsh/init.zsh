CONFIG_PATH_ZSH="$(dirname "$0")"

# Cores
source $CONFIG_PATH_ZSH/src/core/path.zsh
source $CONFIG_PATH_ZSH/src/core/env.zsh
source $CONFIG_PATH_ZSH/src/core/keybind.zsh
source $CONFIG_PATH_ZSH/src/core/programs.zsh

# Plugins
source $CONFIG_PATH_ZSH/src/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $CONFIG_PATH_ZSH/src/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $CONFIG_PATH_ZSH/src/plugins/zsh-completions/zsh-completions.plugin.zsh
source $CONFIG_PATH_ZSH/src/plugins/fzf-tab/fzf-tab.plugin.zsh
source $CONFIG_PATH_ZSH/src/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $CONFIG_PATH_ZSH/src/plugins/chezmoi-completion.zsh
source $CONFIG_PATH_ZSH/src/plugins/post-plugin-script.zsh
