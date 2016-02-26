#Completion
completion='$(brew --prefix)/share/zsh/site-functions/_tmuxinator'

if test -f $completion
then
  source $completion
fi
