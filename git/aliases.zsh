# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# main alias
alias g='git'

# The rest of my fun git aliases
alias gp='git up'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gpush='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gch='git checkout'
alias gb='git branch -vv'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A' # stages all
alias gst='git stash -u' # stashes all (including untracked files)
alias gstp='git stash pop' 
