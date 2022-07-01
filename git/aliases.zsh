# Fun git aliases
alias gl='git pull --stat'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gpf='git push --force-with-lease'
alias gd='git diff'
alias gc='git commit'
alias gcan='git commit --amend --no-edit'
alias gch='git checkout'
alias gb='git branch -vv'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A' # stages all
alias gst='git stash -u' # stashes all (including untracked files)
alias gstp='git stash pop'
alias gr='git reset'
alias grh='git reset HEAD~1'
alias gua='git reset HEAD' # git undo add
alias gum='git reset --merge ORIG_HEAD' # git undo merge

# Gitio urls
gitio() {
    curl -i https://git.io -F "url=$1"
}
