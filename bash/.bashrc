#
# ~/.bashrc
#

### --- PATH setup ---
export PATH="$HOME/nvim:$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin:$HOME/.nvim:/opt/nvim-linux-x86_64/bin:/usr/local/go/bin:$HOME/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

### --- Locale ---
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

### --- Go setup ---
unset GOROOT
export GOROOT="/usr/lib/go"

### --- Kitty integrations ---
alias icat="kitty +kitten icat"
alias unicode="kitty +kitten unicode_input"
alias kdiff="kitty +kitten diff"
alias ktheme="kitty +kitten themes"
alias khgrep="kitty +kitten hyperlinked_grep"

### --- Aliases ---
alias nb='norminette -R CheckDefine -R CheckForbiddenSourceHeader'
alias vim='nvim'
alias make='make -j16'
alias ccc='cc -Wall -Werror -Wextra'

### --- Prompt (Starship) ---
# Enable Starship prompt
eval "$(starship init bash)"

### --- Ctrl+S freeze fix ---
stty stop undef

### --- Bash Readline bindings (Ctrl-J/K for history search) ---
bind '"\C-j": history-search-forward'
bind '"\C-k": history-search-backward'

