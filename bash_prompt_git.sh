# Recommend placing the below in ~/.bashrc
# Full demo on my YouTube channel: https://youtu.be/qrQ4UFPa_jM

# Bash function
my_git() {

GIT_BRANCH=$(git branch --all 2> /dev/null | egrep "^\*" | cut -d ' ' -f 2 )

if [[ -z "$GIT_BRANCH" ]]; then
       echo "" #not in a Git repo
else
    if [ $(git status | egrep "^Untracked" -c) -ge 1 ]; then
        #ANSI code: Red
        echo -e "(\033[0;31m$GIT_BRANCH\033[0m) "
    elif  [ $(git status | egrep "^Changes" -c) -ge 1 ]; then
        #ANSI code: Yellow
        echo -e "(\033[0;33m$GIT_BRANCH\033[0m) "
    else
        #ANSI code: Green
        echo -e "(\033[0;32m$GIT_BRANCH\033[0m) "
    fi
fi
}

# PS1 variable:
export PS1="\[\e]0;\u@\h: \w\a\]\u@\h:\w$ $(my_git)"
