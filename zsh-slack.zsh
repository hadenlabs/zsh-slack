#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install slack for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

slack_package_name=slack

ZSH_SLACK_ROOT=$(dirname "${0}":A)

# shellcheck source=/dev/null
source "${ZSH_SLACK_ROOT}"/src/helpers/messages.zsh

# shellcheck source=/dev/null
source "${ZSH_SLACK_ROOT}"/src/helpers/tools.zsh

function slack::install {
    message_info "Installing ${slack_package_name}"
    if ! type -p brew > /dev/null; then
        message_error "it's neccesary brew, add: luismayta/zsh-brew"
    fi
    brew cask install slack
    message_success "Installed ${slack_package_name}"
}

function slackcat::install {
    if ! type -p slack > /dev/null; then slack::install; fi
    message_info "Installing slackcat ${slack_package_name}"
    curl -Lo slackcat "https://github.com/bcicen/slackcat/releases/download/v1.6/slackcat-1.6-$(uname -s)-amd64"
    mv slackcat /usr/local/bin/
    chmod +x /usr/local/bin/slackcat
    path::append "/usr/local/bin"
    message_success "Installed slackat ${slack_package_name}"
}

if ! type -p slackcat > /dev/null; then slackcat::install; fi
