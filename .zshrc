# Установка файла истории
HISTFILE=~/.zhistory

# Максимальное количество команд в истории
HISTSIZE=10000
SAVEHIST=10000


plugins=(
    fzf-zsh-plugin
    zsh-syntax-highlighting
    git
)
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  # alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias ls='exa -l --icons -a'
  alias lt='exa --tree --level=2 --long --icons'
fi

setopt hist_ignore_all_dups
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias nvimdiff='git difftool --tool=nvimdiff'
alias mc='source /usr/lib/mc/mc-wrapper.sh'
# alias l='ls -CF'

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/pk/.oh-my-zsh/custom/plugins/fzf-zsh-plugin/fzf-settings.zsh
source /home/pk/.oh-my-zsh/custom/plugins/zsh-z/zsh-z.plugin.zsh
source /home/pk/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"
EDITOR=nvim
