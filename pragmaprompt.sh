#!/bin/bash
# -*- mode: bash; coding:utf-8; tab-width: 4; indent-tabs-mode: nil; -*-
# 2016 tom hensel <github@jitter.eu>
#

BLUE="\[$(tput setaf 4)\]"
CYAN="\[$(tput setaf 6)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
PURPLE="\[$(tput setaf 5)\]"
RED="\[$(tput setaf 1)\]"
BLACK="\[$(tput setaf 0)\]"
WHITE="\[$(tput setaf 7)\]"
GREY="\[$(tput setaf 8)\]"
RESET="\[$(tput sgr0)\]"

DATE_FMT='+%H:%M.%S'
VCPROMPT_FMT='%n:%b.%u%m'

function get_abbrv_pwd {
    base="${1##*/}"
    dir="${1%/*}"
    echo "${dir##*/}/${base}"
}

function set_prompt {
    local retval=$?
    local PREFIX SUFFIX DATE PY_VENV
    DATE="${BLUE}$(date "$DATE_FMT")|"
    if test "$USER" = 'root'; then
        PREFIX="${RED}\u${WHITE}:\w"
    else
        # abbreviate PWD for non-root users
        PREFIX="${GREY}\u|${WHITE}$(get_abbrv_pwd "$PWD")"
    fi
    if command -v vcprompt >/dev/null; then
        local vcp
        vcp="$(vcprompt -f "$VCPROMPT_FMT")"
        if test -n "$vcp"; then
            local GIT_STATE="${CYAN}|${vcp}"
        fi
    fi
    if test -n "$VIRTUAL_ENV"; then
        PY_VENV="${PURPLE}|venv"
    elif test -n "$PYENV_VERSION"; then
        PY_VENV="${YELLOW}|${PYENV_VERSION}"
    fi
    if [ "$TERM" = 'screen' ] || [ -n "$TMUX" ]; then
        MUX="|${GREEN}mux"
    fi
    if test $retval -eq 0; then
        SUFFIX="${GREY}|${retval}> ${RESET}"
    else
        SUFFIX="${GREY}|${RED}${retval}${GREY}> ${RESET}"
    fi
    # compose
    export PS1="${DATE}${PREFIX}${GIT_STATE}${PY_VENV}${MUX}${SUFFIX}"
}

PROMPT_COMMAND=set_prompt
