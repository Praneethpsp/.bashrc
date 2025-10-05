# ~/.zshrc file for Zsh

# --- History Settings ---
# Corresponds to HISTCONTROL, histappend, HISTSIZE from .bashrc
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt APPEND_HISTORY          # Append to history file
setopt HIST_IGNORE_ALL_DUPS    # Skip duplicate commands
setopt HIST_IGNORE_SPACE     # Skip commands starting with a space

# --- Aliases & Color ---
# Enable colors for ls, grep, etc. on macOS
export CLICOLOR=1

# Common aliases
alias ls='ls -G' # The -G flag enables color for the default macOS ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Use GNU grep if installed via Homebrew for --color=auto
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# --- Custom Prompt ---
# Load the Zsh 'colors' module to make color codes easier to read
autoload -U colors && colors

# The PROMPT variable in Zsh is equivalent to PS1 in Bash

# First line: [hostname]───{username}──╮
PROMPT=$'\n%F{white}[%F{red}%m%F{white}]───%F{magenta}{%F{green}%n%F{magenta}}%F{white}──╮%f'

# Second line: │                               ╰<current_directory>
# NOTE: Spaces have been added here for alignment. Adjust if needed.
PROMPT+=$'\n%F{white}│                                     ╰%F{cyan}<%F{yellow}%~%F{cyan}>%f'

# Third line: ╰─$
PROMPT+=$'\n%F{white}╰─%F{yellow}%# %f'