#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function slack::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_SLACK_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_SLACK_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_SLACK_PATH}"/config/linux.zsh
      ;;
    esac
}

slack::config::main::factory
