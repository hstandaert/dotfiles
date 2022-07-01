export PATH="/Users/helenastandaert/.local/bin:./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$HOME/.gem/ruby/2.0.0/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# add composer to PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"

# add nvm to path
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# add gems to path
export PATH="/usr/local/opt/ruby/bin:$PATH"

# add mysql dir to path
export PATH="/usr/local/mysql/bin:$PATH"

# ANDROID_HOME
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
