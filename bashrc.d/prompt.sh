#!/usr/bin/env bash

# function prompt.git_branch() {
#   local branch="$(git branch --show-current 2> /dev/null)"
  
#   local branch_truncated="${branch:0:50}"
#   if (( ${#branch} > ${#branch_truncated} )); then
#     branch="${branch_truncated}..."
#   fi

#   local dirty=""

#   if [[ -n "${branch}" ]]; then
#     if [[ ! (-z "$(git status --porcelain)") ]]; then
#       dirty="${COLOR_YELLOW}*${END_COLOR}"
#     fi

#     echo "➜ ${BRIGHT}${COLOR_YELLOW}(${branch})${END_COLOR}${END_BRIGHT}${dirty}"
#   fi
# }
