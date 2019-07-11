function precmd () {
    echo -ne "\033]0;${PWD}\007"
}

function preexec() {
    echo -ne "\033]0;${PWD} - $2\007"
}

function command_not_found_handler() {
    command="$1"
    if which "$command.exe" >/dev/null; then
        shift
        "$command.exe" "$@"
    else
        >&2 echo "zsh: command not found: $command"
    fi
}
