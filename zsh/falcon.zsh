#!/bin/zsh

# add in colouring to man
# mb = blink
# md = begin bold
# me = end mode
# se = end stand out
# so = begin stand out
# ue = end underline
# us = begin underline
man() {
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;97m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;48;5;117;30m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[04;94m' \
    command man "$@"
}

ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#dfdfe5,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=#bfdaff,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=#f0e1ce,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=#eaffc0,bold'

# see https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
# what works:
# - bold
# - underline
# - standout (reverse?)
# - no italic :(
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#57575e'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[default]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#a1a1a9'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#847161'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#a1a1a9,underline' #e.g. exec, builtin
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#a1a1a9,underline' #e.g. exec, builtin
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#99a4bc' #e.g. exec, builtin
ZSH_HIGHLIGHT_STYLES[path]='fg=#99a4bc,underline' #e.g. exec, builtin
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#847161' #e.g. exec, builtin

# todo: contrast this with unknown
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#787882'
