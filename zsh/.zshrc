# ~/.zshrc

# PATH setup
export PATH="$HOME/nvim:$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin:$HOME/.nvim:/opt/nvim-linux-x86_64/bin:/usr/local/go/bin:$HOME/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

# Locale
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export DEBUGINFOD_URLS=https://debuginfod.archlinux.org

# kitty integration
alias icat="kitty +kitten icat"
alias unicode="kitty +kitten unicode_input"
alias kdiff="kitty +kitten diff"
alias ktheme="kitty +kitten themes"
alias khgrep="kitty +kitten hyperlinked_grep"
alias ls='lsd'
# Aliases, mainly used for Hive
alias nb='norminette -R CheckDefine -R CheckForbiddenSourceHeader'
alias vim='nvim'
alias make='make -j16'
alias ccc='cc -Wall -Werror -Wextra'
alias cd='z'

# MANPAGER
export MANPAGER="sh -c 'col -bx | batcat --paging=always -l man'"

# Disable accidental Ctrl+S freeze
stty -ixon

# zoxide and starship
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
fi
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi
# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/kort/.lmstudio/bin"
# End of LM Studio CLI section

