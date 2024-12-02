#!/usr/bin/env bash
# shellcheck disable=SC2034

# Falcon theme with colors for LiquidPrompt

# Recall of lp_terminal_format usage:
#   fg, bg, bold, underline, fallback_fg, fallback_bg
#   -1 = none, -2 = previous, -3 = switch fg/g

# COLORMAP
lp_terminal_format 4 -1 0 0 4 -1
LP_CM_0="${lp_terminal_format:?}"
lp_terminal_format 6 -1 0 0 6 -1
LP_CM_1="${lp_terminal_format:?}"
lp_terminal_format 14 -1 0 0 6 -1
LP_CM_2="${lp_terminal_format:?}"
lp_terminal_format 12 -1 0 0 4 -1
LP_CM_3="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_CM_4="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_CM_5="${lp_terminal_format:?}"
lp_terminal_format 13 -1 1 0 5 -1
LP_CM_6="${lp_terminal_format:?}"
lp_terminal_format 3 -1 1 0 3 -1
LP_CM_7="${lp_terminal_format:?}"
lp_terminal_format 5 -1 1 0 5 -1
LP_CM_8="${lp_terminal_format:?}"
lp_terminal_format 1 -1 1 0 1 -1
LP_CM_9="${lp_terminal_format:?}"
LP_COLORMAP=( ${LP_COLORMAP[@]+"${LP_COLORMAP[@]}"} )
if [[ ${#LP_COLORMAP[@]} == 0 ]]; then
    LP_COLORMAP=(
        "$LP_CM_0"
        "$LP_CM_1"
        "$LP_CM_2"
        "$LP_CM_3"
        "$LP_CM_4"
        "$LP_CM_5"
        "$LP_CM_6"
        "$LP_CM_7"
        "$LP_CM_8"
        "$LP_CM_9"
    )
fi

# TIME
lp_terminal_format 59 -1 0 0 7 -1
LP_COLOR_TIME="${lp_terminal_format:?}"

# BATTERY
lp_terminal_format 7 -1 0 0 7 -1
LP_COLOR_CHARGING_ABOVE="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_COLOR_CHARGING_UNDER="${lp_terminal_format:?}"
lp_terminal_format 13 -1 1 0 5 -1
LP_COLOR_DISCHARGING_ABOVE="${lp_terminal_format:?}"
lp_terminal_format 1 -1 1 0 1 -1
LP_COLOR_DISCHARGING_UNDER="${lp_terminal_format:?}"

# JOBS
lp_terminal_format 3 -1 0 0 3 -1
LP_COLOR_JOB_D="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_COLOR_JOB_R="${lp_terminal_format:?}"
lp_terminal_format 13 -1 1 0 5 -1
LP_COLOR_JOB_Z="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_MARK_JOBS_SEPARATOR="${lp_terminal_format:?}${LP_MARK_JOBS_SEPARATOR}${NO_COL}"

# LOCATION
lp_terminal_format 4 -1 1 0 4 -1
LP_COLOR_IN_MULTIPLEXER="${lp_terminal_format:?}"
lp_terminal_format 14 -1 0 0 6 -1
LP_COLOR_USER_LOGGED="${lp_terminal_format:?}"
lp_terminal_format 6 -1 1 1 6 -1
LP_COLOR_USER_ROOT="${lp_terminal_format:?}"
lp_terminal_format 10 -1 1 0 2 -1
LP_COLOR_X11_ON="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_COLOR_X11_OFF="${lp_terminal_format:?}"
lp_terminal_format 7 -1 1 0 7 -1
LP_COLOR_HOST="${lp_terminal_format:?}"
lp_terminal_format 6 -1 1 1 6 -1
LP_COLOR_SU="${lp_terminal_format:?}"
lp_terminal_format 0 13 1 0 0 5
LP_COLOR_TELNET="${lp_terminal_format:?}"
lp_terminal_format 7 3 1 0 7 3
LP_COLOR_SSH="${lp_terminal_format:?}"
lp_terminal_format 14 -1 0 0 6 -1
LP_COLOR_WRITE="${lp_terminal_format:?}"
lp_terminal_format 9 -1 1 0 1 -1
LP_COLOR_NOWRITE="${lp_terminal_format:?}"

# PATH
lp_terminal_format 15 -1 0 0 7 -1
LP_COLOR_PATH="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_COLOR_PATH_SEPARATOR="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_COLOR_PATH_SHORTENED="${lp_terminal_format:?}"
lp_terminal_format 15 -1 0 1 7 -1
LP_COLOR_PATH_VCS_ROOT="${lp_terminal_format:?}"
lp_terminal_format 12 -1 0 0 4 -1
LP_COLOR_PATH_LAST_DIR="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_COLOR_PATH_ROOT="${lp_terminal_format:?}"

# DEV/ENV
lp_terminal_format 4 -1 0 0 4 -1
LP_MARK_DEV_OPEN="${lp_terminal_format:?}${LP_MARK_DEV_OPEN}${NO_COL}"
lp_terminal_format 7 -1 0 0 7 -1
LP_MARK_DEV_MID="${lp_terminal_format:?}${LP_MARK_DEV_MID}${NO_COL}"
lp_terminal_format 4 -1 0 0 4 -1
LP_MARK_DEV_CLOSE="${lp_terminal_format:?}${LP_MARK_DEV_CLOSE}${NO_COL}"

lp_terminal_format 59 -1 0 0 7 -1
LP_COLOR_OS_ARCH="${lp_terminal_format:?}"
lp_terminal_format 59 -1 0 0 7 -1
LP_COLOR_OS_FAMILY="${lp_terminal_format:?}"
lp_terminal_format 59 -1 0 0 7 -1
LP_COLOR_OS_KERNEL="${lp_terminal_format:?}"
lp_terminal_format 59 -1 0 0 7 -1
LP_COLOR_OS_DISTRIB="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_COLOR_OS_VERSION="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_MARK_OS_SEP="${lp_terminal_format:?}${LP_MARK_OS_SEP}${NO_COL}"

lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_AWS_PROFILE="${lp_terminal_format:?}"
lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_CONTAINER="${lp_terminal_format:?}"
lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_TERRAFORM="${lp_terminal_format:?}"
lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_KUBECONTEXT="${lp_terminal_format:?}"

lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_VIRTUALENV="${lp_terminal_format:?}"
LP_COLOR_NODE_VENV="$LP_COLOR_VIRTUALENV"
LP_COLOR_RUBY_VENV="$LP_COLOR_VIRTUALENV"
LP_COLOR_PERL_VENV="$LP_COLOR_VIRTUALENV"

lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_C="${lp_terminal_format:?}"
lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_CXX="${lp_terminal_format:?}"
lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_GEN="${lp_terminal_format:?}"
lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_BUILD="${lp_terminal_format:?}"
lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_DEBUG="${lp_terminal_format:?}"
lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_RWDI="${lp_terminal_format:?}"
lp_terminal_format 4 -1 0 0 4 -1
LP_COLOR_CMAKE_RELEASE="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_MARK_CMAKE="${lp_terminal_format:?}${LP_MARK_CMAKE}${NO_COL}"

# SESSION
lp_terminal_format 3 -1 0 0 3 -1
LP_COLOR_DIRSTACK="${lp_terminal_format:?}"
lp_terminal_format 11 -1 0 0 3 -1
LP_COLOR_PROXY="${lp_terminal_format:?}"
lp_terminal_format 15 -1 0 0 7 -1
LP_COLOR_SHLVL="${lp_terminal_format:?}"
lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_ENV_VARS_UNSET="${lp_terminal_format:?}"
lp_terminal_format 10 -1 0 0 2 -1
LP_COLOR_ENV_VARS_SET="${lp_terminal_format:?}"

# VCS
lp_terminal_format 2 -1 0 0 2 -1
LP_COLOR_UP="${lp_terminal_format:?}"
lp_terminal_format 7 -1 0 0 7 -1
LP_COLOR_COMMITS="${lp_terminal_format:?}"
lp_terminal_format 9 -1 0 0 1 -1
LP_COLOR_CHANGES="${lp_terminal_format:?}"
lp_terminal_format 5 -1 1 0 5 -1
LP_COLOR_COMMITS_BEHIND="${lp_terminal_format:?}"
lp_terminal_format 1 -1 0 0 1 -1
LP_COLOR_DIFF="${lp_terminal_format:?}"

# LAST SECTION
lp_terminal_format 11 -1 1 0 3 -1
LP_COLOR_RUNTIME="${lp_terminal_format:?}"
lp_terminal_format 13 -1 0 0 5 -1
LP_COLOR_ERR="${lp_terminal_format:?}"
lp_terminal_format 7 -1 1 0 7 -1
LP_COLOR_ERR_MEANING="${lp_terminal_format:?}"
lp_terminal_format 207 -1 1 0 6 -1
LP_COLOR_MARK="${lp_terminal_format:?}"
lp_terminal_format 207 -1 1 0 6 -1
LP_COLOR_MARK_SUDO="${lp_terminal_format:?}"
lp_terminal_format 207 -1 1 0 6 -1
LP_COLOR_MARK_ROOT="${lp_terminal_format:?}"

