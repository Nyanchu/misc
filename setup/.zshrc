##
# 環境設定
#

# 言語設定
export LANG=ja_JP.UTF-8
export OUTPUT_CHARSET=utf8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# ビープ音を鳴らさない
setopt NO_BEEP

# ヒストリーの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 色を使用可能に
autoload -Uz colors && colors

##
# プロンプトの設定
#

# 現在の位置を表示
local pt_dir="%F{blue}[%d]%f" 
PROMPT=$pt_dir$'\n'"> "
# 右プロンプトには現在位置を表示
#RPROMPT=''


##
# 補完機能
#

# 有効にする
autoload -Uz compinit && compinit

# 補完機能で大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# 「#」以降をコメントとして扱う
setopt interactive_comments

##
# コマンドの設定
#

# ディレクトリ名でcdする
setopt AUTO_CD

# cd時に自動でpushdする
setopt AUTO_PUSHD
DIRSTACKSIZE=100

# ls時に色をつける
export LSCOLORS=exfxcxdxbxegedabagacad
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ll="ls -all -GF"
#alias gls="gls --color"
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# rm * 時に確認する
setopt RM_STAR_WAIT

