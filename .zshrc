source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

bindkey "^R" history-incremental-search-backward
zstyle ':completion:*' rehash true

source ~/.shellrc

if [ $commands[kubectl] ]
then
    source <(kubectl completion zsh)
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/amatiasq/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/amatiasq/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/amatiasq/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/amatiasq/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/amatiasq/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/amatiasq/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/amatiasq/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/amatiasq/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/amatiasq/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/amatiasq/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

