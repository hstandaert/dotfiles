# Pure Prompt
# https://github.com/sindresorhus/pure

fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
