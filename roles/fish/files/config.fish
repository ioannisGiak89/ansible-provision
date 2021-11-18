# Fish customisation
functions -e fish_greeting

# Export
set -gx GOPATH $HOME/.go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH /usr/local/go/bin $PATH
set -gx ALIAS $HOME/ansible-provision/roles/fish/files/alias.fish
set -gx FISH_CONF $HOME/ansible-provision/roles/fish/files/config.fish
set -gx FUNCTIONS $HOME/ansible-provision/roles/fish/files/functions.fish
set -gx DOCKER_ID_USER ioannisgiak89
set -gx JAVA_HOME /home/ig657/.sdkman/candidates/java/current
#set -gx GUROBI_HOME /opt/gurobi801/linux64
#set -gx PATH $GUROBI_HOME/bin $PATH
set -gx LD_LIBRARY_PATH $GUROBI_HOME/lib $LD_LIBRARY_PATH
set -gx PATH ~/bin $PATH
set -gx ORACLE_HOME /usr/lib/oracle/18.3/client64
set -gx LD_LIBRARY_PATH $ORACLE_HOME/lib $LD_LIBRARY_PATH
set -gx PATH $ORACLE_HOME/bin $PATH
set -gx PATH /home/ig657/bin/adr-tools/src $PATH
set -gx PATH /home/ig657/bin/flutter/bin $PATH
set -gx ORACLE_SID asdb
set -gx ANDROID_HOME $HOME/Android/Sdk
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH
set -gx REACT_EDITOR atom
# LESS with colors
# from http://blog.0x1fff.com/2009/11/linux-tip-color-enabled-pager-less.html
set -gx LESS "-RSM~gIsw"

# Colorful man pages
# from http://pastie.org/pastes/206041/text
set -gx LESS_TERMCAP_mb (set_color -o red)
set -gx LESS_TERMCAP_md (set_color -o red)
set -gx LESS_TERMCAP_me (set_color normal)
set -gx LESS_TERMCAP_se (set_color normal)
set -gx LESS_TERMCAP_so (set_color -b blue -o yellow)
set -gx LESS_TERMCAP_ue (set_color normal)
set -gx LESS_TERMCAP_us (set_color -o green)

# Alias
. $ALIAS

# functions
. $FUNCTIONS

# Homebrew
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/ig657/.nvm/versions/node/v12.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/ig657/.nvm/versions/node/v12.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/ig657/.nvm/versions/node/v12.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /home/ig657/.nvm/versions/node/v12.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/ig657/.nvm/versions/node/v12.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /home/ig657/.nvm/versions/node/v12.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish
