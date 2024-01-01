# shellcheck shell=bash
# shellcheck enable=all
# vim: ft=bash

# shellcheck source=.config/bash/bashrc
test -r "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/bashrc" \
  && source "${_}"
