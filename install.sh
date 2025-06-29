#!/usr/bin/env bash

function create_symlink() {
  local target="${1}"
  local link_name="${2}"
  
  # Always assume dotfiles repo is authoritative
  if [ -e "${link_name}" ]; then
    rm -f "${link_name}"
  fi

  ln -s "${target}" "${link_name}"
  echo "Created symlink: ${link_name} -> ${target}"  
}

# Ensure the directory exists
mkdir -p "${HOME}/.bashrc.d"

for file in "${HOME}/dotfiles/bashrc.d/"*.sh; do
  if [ -f "${file}" ]; then
    create_symlink "${file}" "${HOME}/.bashrc.d/$(basename "${file}")"
  fi
done
