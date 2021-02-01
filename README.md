
# zsh-poetry

This plugin looks for [poetry](https://github.com/python-poetry/poetry), and loads it if it's found. It also enables poetry tab completions for zsh.

## Install

### Antigen

`antigen bundle Ynjxsjmh/zsh-poetry`

## How does zsh-poetry work?

`zsh-poetry` saves `poetry completions zsh` output into plugin directory as `_poetry`. Antigen will automatically add plugin directory to `fpath` which indicates the zsh completions directory. Then zsh can automatically detect the poetry completion, and load it when necessary.

You may need do `rm ~/.zcompdump*`to delete all `.zcompdump` file in home and reload compinit by `autoload -U compinit && compinit` to make it apply.
