export PATH="$HOME/bin":$PATH;
export PATH="~/Library/Android/sdk/emulator:~/Library/Android/sdk/platform-tools":$PATH;
export PATH="~/.composer/vendor/bin":$PATH;
alias vg="cd ~/vagrant/scotch-box/public";
alias notes="cd ~/vagrant/scotch-box/public/Notes/notes-site/notesmd"
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#PS1="\[\033[36m\]\u\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\>";

#export PS1;

#export PS1="[\u]\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] -> "

function kotlinr() {
   echo Compiling, please wait...
   kotlinc $1 -include-runtime -d out.jar
   java -jar out.jar
}
