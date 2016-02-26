# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).

#Git Completion
git_completion='$(brew --prefix)/share/zsh/site-functions/_git'

if test -f $git_completion
then
  source $git_completion
fi

#Git Flow Completion
gitflow_completion='$(brew --prefix)/share/zsh/site-functions/git-flow-completion.zsh'

if test -f $gitflow_completion
then
  source $gitflow_completion
fi
