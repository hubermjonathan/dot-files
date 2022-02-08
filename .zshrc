############################
#    Jon Huber's .zshrc    #
#                          #
############################


# prompt
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        echo " "
    else
        echo " ($branch) "
    fi
}
setopt prompt_subst
PROMPT='%~$(git_branch)%F{208}-->%f '

# aliases

# path
export PATH="/usr/local/sbin:$PATH"

