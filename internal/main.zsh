#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function slack::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_SLACK_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_SLACK_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_SLACK_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_SLACK_PATH}"/internal/helper.zsh
}

slack::internal::main::factory
