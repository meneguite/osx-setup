source ~/.git-prompt.sh
###############################################################################
# Alias                                                                       #
###############################################################################

alias projects='cd ~/Projects'
alias dkc='cd /Users/ronaldo/Projects/grupocitar/docker'
alias up='cd /Users/ronaldo/Projects/grupocitar/docker && docker-compose up -d'
alias down='cd /Users/ronaldo/Projects/grupocitar/docker && docker-compose down'
alias run='cd /Users/ronaldo/Projects/grupocitar/docker && docker-compose exec php bash'
alias tests='docker-compose exec php ./vendor/bin/phpunit'
alias tests-unit='docker-compose exec php ./vendor/bin/phpunit tests/Unit'
alias tests-feature='docker-compose exec php ./vendor/bin/phpunit tests/Feature'

###############################################################################
# Exports                                                                     #
###############################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Make vim the default editor.
export EDITOR='vim';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Avoid issues with `gpg` as installed via Homebrew.
export GPG_TTY=$(tty);

###############################################################################
# Layout Bash                                                                 #
###############################################################################

LIHTGREEN='\[\e[1;32m\]'
LIGHTBLUE="\[\033[1;36m\]"
YELLOW='\[\e[1;33m\]'
NC='\[\e[0m\]' # No Color

PS1="\n${LIHTGREEN}\\$ \\u@\\h ${YELLOW}[\\w]${LIGHTBLUE}\$(__git_ps1)"$'\n'"${LIHTGREEN}└─> ${NC}"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
