# This plugin loads poetry into the current shell.
# Also enables tab completion.

# Load poetry only if command is not already available
if command -v poetry &> /dev/null; then
    FOUND_POETRY=1
else
    FOUND_POETRY=0
fi

if [[ $FOUND_POETRY -ne 1 ]]; then
    export PATH="$HOME/.poetry/bin:$PATH"
    FOUND_POETRY=1
fi

COMPLETION_FILE=$(dirname "$0")/_poetry

if [[ $FOUND_POETRY -eq 1 ]]; then
    poetry completions zsh > $COMPLETION_FILE
fi

unset FOUND_POETRY COMPLETION_FILE
