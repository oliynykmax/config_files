# ~/.config/fish/config.fish

# PATH setup
set -x PATH \
  /home/kort/.cargo/bin \
  /home/kort/.nvim \
  /opt/nvim-linux-x86_64/bin \
  /home/kort/.local/bin \
  /usr/local/go/bin \
  /home/kort/go/bin \
  /usr/local/bin \
  /usr/bin \
  /bin \
  /usr/local/sbin \
  /usr/bin/site_perl \
  /usr/bin/vendor_perl \
  /usr/bin/core_perl

# Locale
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# Go setup
set -e GOROOT
set -x GOROOT /usr/lib/go

# Aliases, mainly used for Hive
alias nb='norminette -R CheckDefine -R CheckForbiddenSourceHeader'
alias vim='nvim'
alias make='make -j16'
alias ccc='cc -Wall -Werror -Wextra'
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

# === Behavior settings ===
set -g fish_autosuggestion_enabled 1
set -g fish_color_autosuggestion brblack
set -g fish_color_command green
set -g fish_color_param white
# Add extras like ctrl-J/K for history search
bind \cj history-search-forward
bind \ck history-search-backward

# === Disable accidental Ctrl+S freeze ===
stty stop undef

