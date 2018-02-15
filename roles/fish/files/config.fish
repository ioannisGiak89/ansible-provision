# Fish customisation
set -gx fish_greeting ""

# Export
set -gx GOPATH $HOME/.go
set -gx PATH $GOPATH/bin $PATH

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
. roles/fish/files/alias.fish
