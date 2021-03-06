# [Bert Pattyn] https://github.com/dextro
# [Mathias Bynens] https://github.com/mathiasbynens

alias reload!='. ~/.zshrc'
alias upgrade!='dot'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# disable autocorrect and run as admin
alias mtr="nocorrect sudo mtr"

# Print ip address
alias myip='curl icanhazip.com'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+.\d+.\d+.\d+)/ && print $1'"

# generate password
# optional variable is the length of the password (otherwise 26)
genpwd() {
  PW=$(openssl rand -base64 32 | head -c${1-26});
  echo 'new password: '$PW;
  echo $PW | pbcopy;
}

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Colored output for cat
alias cat='ccat'
