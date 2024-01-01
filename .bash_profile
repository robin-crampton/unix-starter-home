# shellcheck shell=bash
# shellcheck enable=all
# vim: ft=bash

# shellcheck source=.config/bash/profile
test -r "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/profile" \
  && source "${_}"
