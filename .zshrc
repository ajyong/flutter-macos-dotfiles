# Zsh completions for Homebrew-installed packages
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Enable rbenv in shell
eval "$(rbenv init - zsh)"

# Android cmdline tools and Studio-provided Java runtime
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/cmdline-tools/latest/bin"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/home"

# Shell Git shorthands
alias gp="git push"
alias gpf="git push --force"
alias gcf="git commit --fixup"
alias glg="git lg"
alias gfa="git fetch --all --prune"
alias grc="git rebase --continue"
alias grm="git rebase main"
alias grom="gfa && git rebase origin/main"
alias gca="git commit --amend"
alias grira="git rebase --interactive --rebase-merges --autosquash"
alias gpso="git push --set-upstream origin"
