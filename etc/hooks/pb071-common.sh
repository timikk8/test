#!/bin/false

HELP_MESSAGE="If something goes wrong just ask for help. PB071 team is here for you."

# CAUTION: Avoid changing 'MAIN_BRANCH'!
# Changing 'MAIN_BRANCH' to a different value (especially 'master') can break
# a lot of functions. Review of all occurrences before change is strongly advised.
MAIN_BRANCH="main"

_regex() {
    if [ -z "$1" ]; then
        grep -e "$2"
    else
        grep $1 -e "$2"
    fi
}

regex_output() {
    _regex "" "$1"
}

regex_output_inverse() {
    _regex "-v" "$1"
}

regex_inverse() {
    _regex "-v -q" "$1"
}

regex_insensitive() {
    _regex "-i -q" "$1"
}

regex() {
    _regex "-q" "$1"
}

regex_exact() {
    regex "^$1$"
}

_color_output() {
    if [ -t 2 ]; then
        printf "\033[%sm%s\033[0m" "$1" "$2" 1>&2
    else
        printf "%s" "$2"
    fi
}

err() {
    _color_output "31" "$*"
}

warn() {
    _color_output "33" "$*"
}

is_hw_branch() {
    echo "$1" | regex_exact "hw0[1-6]"
}

get_current_branch_name() {
    BRANCH_NAME=$(git branch --show-current)

    if [ -z "$BRANCH_NAME" ]; then
        echo "$(err FATAL ERROR): You are in a detached state." 1>&2
        echo "Do not commit!" 1>&2
        echo "   git switch -" 1>&2
        return 1
    fi

    echo "$BRANCH_NAME"
}
