# ~/.config/fish/config.fish

# PATH setup
set -x PATH \
  $HOME/nvim \
  $HOME/.local/bin \
  $HOME/bin \
  $HOME/.cargo/bin \
  $HOME/.nvim \
  /opt/nvim-linux-x86_64/bin \
  /usr/local/go/bin \
  $HOME/go/bin \
  /usr/local/bin \
  /usr/bin \
  /bin \
  /usr/local/sbin \
  /usr/bin/site_perl \
  /usr/bin/vendor_perl \
  /usr/bin/core_perl \
# Locale
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -Ux DEBUGINFOD_URLS https://debuginfod.archlinux.org

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
#beatiful prompt
function fish_prompt
    set_color -o white
    printf '\n'
    set_color -b '#56a9e9' -o black
    printf ' %s ' (whoami)
    set_color -b '#e0e2db' -o black
    printf ' %s' (prompt_pwd)
    printf '%s ' (__fish_git_prompt)
    set_color normal
    printf ' ❯ '
end
# No fish greeting
function fish_greeting
end

# === Completion config ===
set -g fish_complete_path ~/.config/fish/completions
# Show . and .. in completion
set -g __fish_complete_special_dirs true
set -x MANPAGER "sh -c 'col -bx | batcat --paging=always -l man'"

# === Behavior settings ===
set -g fish_autosuggestion_enabled 1
set -g fish_color_autosuggestion brblack
# Add extras like ctrl-J/K for history search
bind \cj history-search-forward
bind \ck history-search-backward

# === Disable accidental Ctrl+S freeze ===
stty stop undef

# starhip
zoxide init fish | source
starship init fish | source
