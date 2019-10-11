#system
alias newalias="nano ~/.bash_aliases"
alias apply="source ~/.bashrc"
alias gitconfig="nano ~/.gitconfig"
alias rsa="cat ~/.ssh/id_rsa.pub"

#git
alias feature='_feature(){ git checkout -b feature/DSP-"$1"; }; _feature'
alias dev="git checkout develop && git pull"
alias mas="git checkout master & git pull"
alias pull="dev && git pull && mas && git pull"
alias gs="git status"
alias gc="git checkout"
alias amend="git add . && git commit --amend --no-verify --no-edit"
alias f='f(){ git checkout feature/DSP-"$@"; }; f'
alias gqs="/usr/local/bin/git-quick-stats"
alias prev="git checkout -"
#alias rr="rr(){ set -x; echo "$VERSION"-$2; set +x; }; rr"
alias lt="git lasttag"

# projects
alias newc='newchange(){ cat ~/snapshot.txt CHANGELOG.md | sponge CHANGELOG.md; }; newchange'
alias rebi='rebi(){ git rebase -i HEAD~"$@"; }; rebi'

if [ -f ~/.bash_aliases_local ]; then
    . ~/.bash_aliases_local
fi

