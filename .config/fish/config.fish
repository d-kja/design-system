if status is-interactive
    # Remove greeting
    set fish_greeting

    # Aliases   
    alias c="clear"
    alias C="clear" 
    alias l="ls -la"
    alias L="ls -la"
    alias rmf="rm -rf"
    alias open="xdg-open"
    alias rand="openssl rand -base64 32"

    alias gst="git status"
    alias glog="git log --oneline"
    alias gadd="git add ."
    alias gpush="git push"
    alias gpull="git pull"
    alias gbr="git branch"
    alias gc="git checkout"
    alias gcdev="git checkout desenvolvimento" 
    alias checkgst="gst && echo '' && echo ''"
    alias check="checkgst && gpull origin main"
    
    alias dps="docker ps"
    alias dc="docker compose"
    alias dcd="docker compose down"
    alias dcu="docker compose up -d"
    alias docker-start="systemctl start docker"
    alias docker-rootless="docker context use rootless"
    alias docker-host="export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock"

    alias lat="laterem"
    alias gui="gitui"
    alias zen="~/.local/bin/zen/zen"

    # ------------------------- #

    # CONFIG

    # Binaries
    set PATH $PATH $HOME/.local/bin

    # STARSHIP PLUGIN
    starship init fish | source

    # ZOXIDE PLUGIN
    zoxide init fish --cmd cd | source

    # NPM PATH
    set NPM_PACKAGES "$HOME/.npm-packages"
    set PATH $PATH $NPM_PACKAGES/bin
    set MANPATH $NPM_PACKAGES/share/man $MANPATH

    # RUST UP
    . "$HOME/.cargo/env.fish"

    # GOLANG
    set PATH $PATH $HOME/go/bin
    set PATH $PATH /usr/local/go/bin

    # BUN
    set --export BUN_INSTALL "$HOME/.bun"
    set --export PATH $BUN_INSTALL/bin $PATH

    # KEYS

    set SSH_KEYS_TO_AUTOLOAD "$HOME/.ssh/id_ed25519"
    keychain -q --eval $SSH_KEYS_TO_AUTOLOAD | source
end
