# Git Abbreviations

abbr g 'git'

# General Git Tools
abbr gclean 'git clean --interactive -d'
abbr gcl 'git clone --recurse-submodules'

# Adding
abbr ga 'git add'
abbr gaa 'git add --all'
abbr gapa 'git add --patch'
abbr gau 'git add --update'

# Patching (fancy)
abbr gam 'git am'
abbr gama 'git am --abort'
abbr gamc 'git am --continue'
abbr gamscp 'git am --show-current-patch'
abbr gams 'git am --skip'

# Patching (diff)
abbr gap 'git apply'
abbr gapt 'git apply --3way'

# Binary Search for Bug
abbr gbs 'git bisect'
abbr gbsb 'git bisect bad'
abbr gbsg 'git bisect good'
abbr gbsn 'git bisect new'
abbr gbso 'git bisect old'
abbr gbsr 'git bisect reset'
abbr gbss 'git bisect start'

# Blame
abbr gbl 'git blame -w'

# Branch (General)
abbr gb 'git branch'
abbr gba 'git branch --all'
abbr gbd 'git branch --delete'
abbr gbD 'git branch --delete --force'
abbr gbm 'git branch --move'
abbr gbnm 'git branch --no-merged'
abbr gbv 'git branch -v'
abbr gbr 'git branch --remote'
# abbr ggsup 'git branch --set-upstream-to=origin/$(git_current_branch)'

# Branch (Checkout)
abbr gco 'git checkout'
abbr gcor 'git checkout --recurse-submodules'
abbr gcb 'git checkout -b'
abbr gcB 'git checkout -B'
abbr gcom 'git checkout $(git_main_branch)'

# Cherry Pick
abbr gcp 'git cherry-pick'
abbr gcpa 'git cherry-pick --abort'
abbr gcpc 'git cherry-pick --continue'

# Committing
abbr gc 'git commit --verbose'
abbr gcam 'git commit --all --message'
abbr gcm 'git commit --message'
abbr gca 'git commit --verbose --all'
abbr gca! 'git commit --verbose --all --amend'
abbr gc! 'git commit --verbose --amend'

# Diffing
abbr gd 'git diff'
abbr gdt 'git diff-tree --no-commit-id --name-only -r'

# Remote Management
abbr gf 'git fetch'
abbr gfa 'git fetch --all --prune --jobs=$(nproc)'
# > Pull
abbr gl 'git pull'
abbr gpr 'git pull --rebase'
abbr gprv 'git pull --rebase -v'
abbr gpra 'git pull --rebase --autostash'
abbr gprav 'git pull --rebase --autostash -v'
# > Push
abbr gp 'git push'
abbr gpd 'git push --dry-run'
abbr gpf! 'git push --force'
abbr gpf 'git push --force-with-lease --force-if-includes' 

# Git Merge
abbr gm 'git merge'
abbr gma 'git merge --abort'
abbr gmc 'git merge --continue'
abbr gms "git merge --squash"
abbr gmom 'git merge origin/$(git_main_branch)'
abbr gmtl 'git mergetool --no-prompt'
abbr gmtlvim 'git mergetool --no-prompt --tool=vimdiff'

# Git Rebase
abbr gpu 'git push upstream'
abbr grb 'git rebase'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbi 'git rebase --interactive'
abbr grbo 'git rebase --onto'
abbr grbs 'git rebase --skip'

# Reflog
abbr grf 'git reflog'

# Git Reset
abbr grh 'git reset'
abbr gru 'git reset --'
abbr grhh 'git reset --hard'
abbr grhk 'git reset --keep'
abbr grhs 'git reset --soft'

# Git rm
abbr grm 'git rm'
abbr grmc 'git rm --cached'

# Git Stash
abbr gstaa 'git stash apply'
abbr gstc 'git stash clear'
abbr gstd 'git stash drop'
abbr gstl 'git stash list'
abbr gstp 'git stash pop'
abbr gsta 'git stash push'

# Git Status
abbr gst 'git status'

# Git Log
abbr glgg 'git log --graph'
abbr glgga 'git log --graph --decorate --all'
abbr glgm 'git log --graph --max-count=10'
abbr glods 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
abbr glod 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
abbr glola 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
abbr glols 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'
abbr glol 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
abbr glo 'git log --oneline --decorate'
abbr glog 'git log --oneline --decorate --graph'
abbr gloga 'git log --oneline --decorate --graph --all'

# Git Worktree
abbr gwt 'git worktree'
abbr gwta 'git worktree add'
abbr gwtls 'git worktree list'
abbr gwtmv 'git worktree move'
abbr gwtrm 'git worktree remove'


