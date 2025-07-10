# load modules
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space are not saved

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# cmp opts
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;32 # colorize cmp menu
# zstyle ':completion:*' file-list true # more detailed list
zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/ expansion

# main opts
setopt append_history inc_append_history share_history # better history
# on exit, history appends rather than overwrites; history is appended as soon as cmds executed; history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
setopt autocd # type a dir to cd
setopt auto_param_slash # when a dir is completed, add a / instead of a trailing space
setopt no_case_glob no_case_match # make cmp case insensitive
#setopt globdots # include dotfiles
setopt extended_glob # match ~ # ^
setopt interactive_comments # allow comments in shell
unsetopt prompt_sp # don't autoclean blanklines
stty stop undef # disable accidental ctrl s

# fzf setup
#source <(fzf --zsh) # allow for fzf history widget

# binds
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^k" kill-line
bindkey "^j" backward-word
bindkey "^k" forward-word
bindkey "^H" backward-kill-word
# ctrl J & K for going up and down in prev commands
bindkey "^J" history-search-forward
bindkey "^K" history-search-backward
bindkey '^R' fzf-history-widget

# ~/.zshrc

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
eval "$(starship init zsh)"

### --- Ctrl+S freeze fix ---
stty stop undef

### --- Zsh bindings for history search ---
bindkey '^J' history-search-forward
bindkey '^K' history-search-backward

### --- Completion setup ---
autoload -Uz compinit
compinit

