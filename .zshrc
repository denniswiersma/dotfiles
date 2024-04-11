# Export PATH
export PATH=/usr/local/bin:$PATH

# Load zsh-syntax-highlighting
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Improve autocomplete
fpath+=~/.zfunc
autoload -Uz compinit && compinit -u

# Setup for GPG signing and SSH
export "GPG_TTY=$(tty)"
export "SSH_AUTH_SOCK=${HOME}/.gnupg/S.gpg-agent.ssh"
gpgconf --launch gpg-agent

# cli tools ALIASES #
alias ls='lsd'
alias grep='rg'
alias cat='bat'
alias du='dust'
alias hf='hyperfine'
alias preview='open -a Preview'

# location ALIASES #
alias home='cd $HOME'
alias icloud='cd /Users/denniswiersma/Library/Mobile\ Documents/com~apple~CloudDocs/Documents'
alias pd="cd /Users/denniswiersma/Library/CloudStorage/ProtonDrive-denniswiersma@protonmail.com"
alias bioinf='cd /Users/denniswiersma/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/School/Bioinformatica'
alias int='cd /Users/denniswiersma/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/School/Bioinformatica/internship'
alias zshrc='nvim $HOME/.zshrc'

# SSH ALIASES #
alias dbtunnelbioinf='ssh -N -L 3306:webprojectsdb.bin.bioinf.nl:3306 dwiersma@bioinf.nl -p 4235'
alias jnt='ssh -L 8392:127.0.0.1:8888 dwiersma@bioinf.nl'


# sleep laptop when lid is closed
alias lidsleepf='sudo pmset -b sleep 0; sudo pmset -b disablesleep 1'
alias lidsleept='sudo pmset -b sleep 5; sudo pmset -b disablesleep 0'

alias mambayml='mamba env export --from-history | grep -v "^prefix: " > environment.yml'
# END ALIASES #

# Set paths
export PATH=$PATH:/Users/denniswiersma/LIB/flutter/bin
export PATH=$PATH:$HOME/LIB/sratoolkit.3.0.1-mac64/bin

# set and change java version - setjdk([version number]) #
function setjdk() {
  if [ $# -ne 0 ]; then
    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
    if [ -n "${JAVA_HOME+x}" ]; then
      removeFromPath $JAVA_HOME
    fi
    export JAVA_HOME=`/usr/libexec/java_home -v $@`
    export PATH=$JAVA_HOME/bin:$PATH
  fi
}

removeFromPath () {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
# end set java version #


# reset gpg card
resetcard() {
  rm -r ~/.gnupg/private-keys-v1.d
  gpgconf --kill gpg-agent
  gpg --card-status
}

resetgpg() {
    gpg-connect-agent updatestartuptty /bye
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/denniswiersma/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/denniswiersma/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/denniswiersma/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/denniswiersma/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/denniswiersma/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/denniswiersma/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version

# Created by `pipx` on 2023-11-16 14:44:07
export PATH="$PATH:/Users/denniswiersma/.local/bin"


eval "$(starship init zsh)"
