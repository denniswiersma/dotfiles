# Set shell promt styling
PROMPT="%F{134}%n%f@%F{35}%m%f:%F{8}%3~%f%F{26}$%f"

# Load cattppuccin highlighting
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ALIASES #
# ls aliases
alias ls='ls --color'
# Bioinf
alias sshbioinf='ssh -p 4235 dwiersma@bioinf.nl'
alias cdbioinf='cd /Users/denniswiersma/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/School/Bioinformatica'
alias dbtunnelbioinf='ssh -N -L 3306:webprojectsdb.bin.bioinf.nl:3306 dwiersma@bioinf.nl -p 4235'

# VPS server
alias sshvps='ssh dennis@denniswiersma.com'

# cd aliases
alias cdhome='cd $HOME'
alias cdicloud='cd /Users/denniswiersma/Library/Mobile\ Documents/com~apple~CloudDocs/Documents'

alias zshrc='nvim $HOME/.zshrc'
alias preview='open -a Preview'

alias clustalo='/Users/denniswiersma/clustalo'
alias mambayml='mamba env export --from-history | grep -v "^prefix: " > environment.yml'
# END ALIASES #

# Set paths
export PATH=$PATH:/Users/denniswiersma/miniconda3/bin/hisat2
export PATH=$PATH:/Users/denniswiersma/LIB/flutter/bin
export PATH=$PATH:$HOME/clustalo
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