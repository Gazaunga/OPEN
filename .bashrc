source ~/.bash_prompt
source ~/.bash_functions
source ~/.bash_aliases

export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '

case "$TERM" in
    xterm*)
        TERMLIST=(
            xterm-256color
            xterm-16color
            xterm-color
            xterm
            ) ;;
    screen*)
        TERMLIST=(
            screen-256color-bce
            screen-256color
            screen-16color-bce
            screen-16color
            screen
            ) ;;
    *)
        TERMLIST="$TERM" ;;
esac
for term in $TERMLIST; do
    infocmp "$term" >/dev/null 2>&1 &&
        export TERM=$term &&
        break
done

