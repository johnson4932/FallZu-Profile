#package download
setenv PACKAGEROOT ftp://ftp.tw.freebsd.org

#default vim
setenv EDITOR vim

#default umask
umask 022

#path
set path = (~/bin ~)
set path = ($path /usr/local/pgsql/bin)
set path = ($path /bin /sbin /standard /usr/bin /usr/sbin /usr/X11R6/bin /usr/local/bin /usr/local/sbin /usr/games)

cd $HOME
alias mwget 'wget -m -nH -np'
alias svn '(umask 002; /usr/local/bin/svn \!*)'
alias svnadmin '(umask 002; /usr/local/bin/svnadmin \!*)'
alias trac-admin '(umask 002; /usr/local/bin/trac-admin \!*)'
alias bye "logout"
alias c "cls"
alias cd.. "cd .."
alias cd... "cd ../.."
alias cls "/usr/bin/tput clear"
alias colorls "/bin/ls -aFGg"
alias d "ls -l"
alias deltree "rm -r"
alias dir "ls -l"
alias dir/p "ls -l \!* | less"
alias dir/w "ls"
alias f "finger"
alias g "/usr/bin/grep --mmap"
alias l "/usr/bin/last \!* | less"
alias less "/usr/bin/less -EmrSw"
alias lo "logout"
alias ls "ls-F -aFGg"
alias m "less"
alias md "/bin/mkdir"
alias more "less"
alias n "/usr/bin/nslookup"
alias psa "ps -awx"
alias psm "psu $USER"
alias psr "psu root"
alias psu "/bin/ps -w -U \!* | less -EmrSw"
alias rd "/bin/rmdir"
alias s "/usr/local/bin/screen"
alias ssh "/usr/bin/ssh -4 -C -e none"
alias SYNC "/bin/sync; /bin/sync; /bin/sync"
alias top "/usr/bin/top -s1"
alias write 'write'
alias vi 'vim'
alias telnet 'env LANG=zh_TW.Big5 zh-telnet \!*'
alias t 'env LANG=zh_TW.Big5 zh-telnet \!*'
alias listen 'sockstat | grep "\*:[0-9 ]*\*:\*" | cut -c10-18,30-34,39-45 | sort -n -u +2'
alias irssi 'env TERM=xterm-color irssi'
set autoexpand
set autolist
set history = 5000
set mail = (1 /var/mail/$USER)
if ( ! $?WINDOW ) then
  set prompt = "%{^[[32m%}%n%{^[[0m%}@%{^[[36m%}%m%{^[[0m%} [%{^[[32m%}%~%{^[[0m%}] (%{^[[36m%}%T%{^[[0m%}) "
else
  set prompt = "%{^[[32m%}%n%{^[[0m%}@%{^[[36m%}%m%{^[[0m%} [%{^[[32m%}%~%{^[[0m%}] [%{^[[36m%}%T%{^[[0m%}/%{^[[36m%}W$WINDOW%{^[[0m%}] "
endif
set savehist = 5000

setenv LANG en_US.UTF-8
setenv LC_CTYPE en_US.UTF-8
setenv BLOCKSIZE "k"
setenv CLICOLOR_FORCE
setenv LESS "-EmrSw"
setenv LSCOLORS "gxfxcxdxbxegedabagacad"
setenv PAGER "/usr/bin/less"

setenv VISUAL $EDITOR

if ( $OSTYPE == FreeBSD ) then
  alias colorls "/bin/ls -aFGg"
  alias ls "ls-F -aFGg"
  alias n "/usr/sbin/nslookup"
  alias top "/usr/bin/top -s1"
  setenv EDITOR "/usr/local/bin/vim"
  setenv VISUAL $EDITOR
else
  alias colorls "/bin/ls -aF --color=always"
  alias ls "ls-F -aF --color=always"
  alias n "/usr/local/bin/nslookup"
  alias top "/usr/bin/top -d1"
  setenv EDITOR "/usr/bin/vim"
  setenv VISUAL $EDITOR
endif

# bind keypad keys for console, vt100, vt102, xterm
bindkey "\e[1~" beginning-of-line  # Home
bindkey "\e[2~" overwrite-mode     # Ins
bindkey "\e[3~" delete-char        # Delete
bindkey "\e[4~" end-of-line        # End
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word

#set sudo auto complete
set complete = enhance
complete sudo 'n/-l/u/' 'p/1/c/'

