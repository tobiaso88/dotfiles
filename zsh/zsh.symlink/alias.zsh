# Edit the aliases file
alias aliases='subl ~/.zsh/alias.zsh'

# Edit the hosts file
alias hosts='subl /etc/hosts'

# Open the virtualhosts folder in sublime
alias virtualhosts='subl ~/.virtualhosts'

# Edit the hosts file
alias httpde='subl /usr/local/etc/httpd/httpd.conf'

# Edit the .zshrc file
alias zs='subl ~/.zshrc'
alias csd='cap staging deploy'
alias cpd='cap production deploy'

## Git stuff
alias gmc='git fetch core && git merge --no-ff core/develop'
alias rebasedev="git fetch --all && git rebase origin/develop"

# Mysql
alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlrestart='sudo /usr/local/mysql/support-files/mysql.server restart'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

alias vh='virtualhost.sh'

# Sass watcher
alias swatch='sass --watch . --style expanded'

alias dockercreatemysql='docker run -i -t -p 3306:3306 -v ${PWD}/mysql:/var/lib/mysql -v ${PWD}/mysql.conf.d:/etc/mysql/conf.d -e MYSQL_ALLOW_EMPTY_PASSWORD= -e MYSQL_ALLOW_EMPTY_PASSWORD=yes --name db mysql'

# Customer ssh
alias jonic='ssh jonictextil@server6.c4hosting.se'
alias jackan='ssh root@jackan.com'

alias phpv='brew-php-switcher'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias sites="cd ~/Sites"

# Desk
alias d.="desk go"
