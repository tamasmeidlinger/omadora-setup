# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


# ==============================
# FZF
# ==============================

export FZF_DEFAULT_OPTS="
  --style=minimal
  --layout=reverse
  --border=rounded
  --padding=0
  --info=inline
  --prompt=''
  --pointer='▶'
  --marker='✓'
  --color=bg:#292C35
  --color=fg:#9CCBEF
  --color=hl:#D3CFBB
  --color=fg+:#C6D0F5
  --color=bg+:#313549
  --color=hl+:#D3CFBB
  --color=info:#838BA7
  --color=prompt:#8CAAEE
  --color=pointer:#A5D98F
  --color=marker:#A6D189
  --color=spinner:#8CAAEE
  --color=header:#A5ADCE
  --color=border:#51576D
"

# FZF-TAB appearance
zstyle ':fzf-tab:*' fzf-flags \
  --height=60% \
  --layout=reverse \
  --border=rounded \
  --info=inline-right \
  --prompt='❯ ' \
  --pointer='❯' \
  --marker='▌' \
  --color='bg:#292c35,bg+:#292c35,fg:#cdd6f4,fg+:#cdd6f4' \
  --color='hl:#89dceb,hl+:#89dceb,prompt:#89dceb,pointer:#89dceb' \
  --color='marker:#f38ba8,border:#49b6c8,info:#6c7086'

# ==============================
# ohmyzsh
# ==============================

plugins=(
  git
  fzf-tab
)

source $ZSH/oh-my-zsh.sh

# ====================================
# Aliases
# =====================================

alias fzf="fzf -m"
alias ls="eza -1 --icons=always --oneline"
alias lsd="eza -lh1 --icons always"
alias lst="eza --icons never -T -L"
alias v="nvim"
alias lg="lazygit"

source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
