# Dippin Dots

* Default to TMUX
```bash
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~
screen ]] && [[ ! "$TERM" ]] && [ -z "$TMUX" ]; then
    exec tmux
fi
```
