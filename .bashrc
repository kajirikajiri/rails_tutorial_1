alias ll='ls -l'
alias l='ls -al'
alias hg='history | grep'
alias pag='ps aux | grep'
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# git alias
alias g='git'
alias gs='git status'
alias gst='git status -sb'
alias ga='git add'
alias gau='git add -u' # Removes deleted files
alias gp='git pull'
alias gpu='git push'
alias gc='git commit -v'
alias gca='git commit -v -a' # Does both add and commit in same command, add -m 'blah' for comment
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gl='git log'
alias glo='git log --oneline'
alias gla='git log --pretty="format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]" --date=iso --all --graph'
alias glp='git log -p'
alias gb='git branch'
alias gba='git branch -a'
alias gbn='git branch --contains=HEAD'
alias gd='git diff'
alias gsb='git show-branch'
alias gsba='git show-branch -a'

# go alias
alias goi='go install'

# docker alias
alias d='docker'
alias dc='docker-compose'
alias dcn='docker container'
alias dcnexec='docker container exec -it'
alias dexec='docker exec -it'

# other
alias viba='sudo vi /etc/soba-viba/.bashrc'
alias soba='source ~/.bash_profile'
alias savesnippets='cd ~/Library/"Application Support"/Code/User/snippets && git add . && git commit -m "change" && git push'
alias savebashrc='cd /etc/soba-viba/ && sudo git add . && sudo git commit -m "change" && sudo git push --set-upstream origin master'
alias gosnippets='cd /Users/kazukinakamura/Library/Application\ Support/Code/User/snippets'

HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

