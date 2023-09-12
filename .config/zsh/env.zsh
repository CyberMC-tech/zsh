export EDITOR='nvim'
export PAGER='nvimpager'

autoload -U +X bashcompinit && bashcompinit

export SUDO_PROMPT="passwd: "
export TERMINAL="kitty"
export BROWSER="firefox"
export VISUAL="nvim"
export EDITOR="nvim"
export OPENAI_API_KEY="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"
export OCEAN_IP_ADDR="104.248.118.208"


export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_DATA_DIRS="/usr/local/share:/usr/share:/var/lib/flatpak/exports/share:$XDG_DATA_HOME/flatpak/exports/share"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_TEMPLATES_DIR="$HOME/Templates"
export XDG_PUBLICSHARE_DIR="$HOME/Public"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"


# FZF bases
export FZF_DEFAULT_OPTS="
  --color fg:#cdd6f4
  --color fg+:#cdd6f4
  --color bg+:#313244
  --color hl:#f38ba8
  --color hl+:#f38ba8
  --color info:#cba6f7
  --color prompt:#cba6f7
  --color spinner:#f5e0dc
  --color pointer:#f5e0dc
  --color marker:#f5e0dc
  --color border:#1e1e2e
  --color header:#f38ba8
  --prompt ' '
  --pointer ' λ'
  --layout=reverse
  --border horizontal
  --height 40"

export CHEAT_USE_FZF=true
