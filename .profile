#!/bin/sh
# SPDX-FileCopyrightText: 2025 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: MIT

# XDG base directory setup.
#
# See https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
: "${XDG_CONFIG_HOME:=$HOME/.config}" "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${XDG_STATE_HOME:=$HOME/.local/state}" "${XDG_CACHE_HOME:=$HOME/.cache}"
export XDG_CONFIG_HOME XDG_DATA_HOME XDG_STATE_HOME XDG_CACHE_HOME
