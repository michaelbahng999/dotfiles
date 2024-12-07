### ZSH ###

# git
export PATH="/opt/homebrew/bin:${PATH}"
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

PROMPT="%F{green}%~%f $ "
RPROMPT='${vcs_info_msg_0_}'

### PYTHON ###
PYTHON_CONFIGURE_OPTS="--enable-framework"
eval "$(pyenv init -)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

### RUST ###
source $HOME/.cargo/env

### NODE ###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### JAVA ###
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME="$(dirname $(dirname $(realpath $(which javac))))"

### K8 ###
alias k="kubectl"
export PATH=$PATH:$(go env GOPATH)/bin

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

