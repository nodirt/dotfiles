#!/bin/sh

# Command prompt
function command_prompt {
  local __git_branch_color="\[\033[37m\]"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  export PS1="\[\033[1;31m\]\W $ $__git_branch_color$__git_branch\[\033[0m\] "
}

command_prompt
