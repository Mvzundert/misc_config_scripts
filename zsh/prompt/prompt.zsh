# Add precmd hook
add-zsh-hook precmd update_prompt

PROMPT_SYMBOL='💀'

# Update PROMPT and RPROMPT
function update_prompt() {
    # Custom prompt with timestamp and git branch name
    export PROMPT=$'%F{002}┌──[%B%F{001}%(6~.%-1~/…/%4~.%5~)%b%F{002}]-%(#.$PROMPT_SYMBOL.$PROMPT_SYMBOL)-%F{005}%*$(git_prompt_info)$(node_prompt)%B%F{002}%b%F{002}\n└─%B%(#.%F{002}#.%F{002}$)%b%F{002} '
    export RPROMPT=''

    zle && zle reset-prompt
}

# Add update_prompt function to precmd function list
precmd_functions+=update_prompt
