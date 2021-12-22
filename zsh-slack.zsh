#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install and functions slack for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
ZSH_SLACK_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_SLACK_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_SLACK_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_SLACK_PATH}"/pkg/main.zsh
