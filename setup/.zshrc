##
# 環境設定
#

# 言語設定
export LANG=ja_JP.UTF-8
export OUTPUT_CHARSET=utf8
# ターミナルからsshした先で日本語入力が出来ない件の解決
#export LC_CTYPE=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

# 色を使用可能に
autoload -Uz colors && colors
# 補完機能を有効にする
autoload -Uz compinit && compinit
# vcs_info
autoload -Uz vcs_info

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# ビープ音を鳴らさない
setopt NO_BEEP

# ヒストリーの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


##
# 補完機能
#

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

# llの設定
alias ll="ls -all -GF"

# cdで移動後に自動でllする
function chpwd(){ ll }

# ls時に色をつける
export LSCOLORS=exfxcxdxbxegedabagacad
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# rm * 時に確認する
setopt RM_STAR_WAIT


##
# git
#

# vsc_infoをgitのみ有効にする
zstyle ":vcs_info:*" enable git
# gitリポジトリに対してリポジトリ情報を表示する
zstyle ':vcs_info:git:*' formats '* %F{blue}%b%f'
zstyle ':vcs_info:git:*' actionformats '* %F{blue}%b%f(%F{red}%a%f)'


##
# プロンプトの設定
#

# プロンプト内で変数参照する
setopt PROMPT_SUBST

# コマンド実行後は右プロンプトを消す
setopt TRANSIENT_RPROMPT

# 現在の位置を表示
local pt_dir="%F{blue}[%d]%f"
PROMPT=$pt_dir$'\n'"> "

# 右プロンプトにはgitのブランチ名を表示
my_vsc_info() {
    vcs_info
    echo $vcs_info_msg_0_
}
RPROMPT=$'$(my_vsc_info)'

