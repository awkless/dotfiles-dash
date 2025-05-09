#!/bin/sh
# SPDX-FileCopyrightText: 2025 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: MIT

# XDG base directory setup.
#
# See https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
: "${XDG_CONFIG_HOME:=$HOME/.config}" "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${XDG_STATE_HOME:=$HOME/.local/state}" "${XDG_CACHE_HOME:=$HOME/.cache}"
export XDG_CONFIG_HOME XDG_DATA_HOME XDG_STATE_HOME XDG_CACHE_HOME

# Configure session information settings...
: "${LOGNAME:=$(logname)}" "${HOSTNAME:=$(uname -n)}"
export LOGNAME HOSTNAME

# Load .shrc as default environment...
: "${ENV:=$HOME/.shrc}"
export ENV

# Add binaries to PATH if they arent added yet. Affix colons on either side of
# $PATH to simplify matching...
case ":${PATH}:" in
  *:"$HOME/.local/share/../bin":*)
    ;;
  *)
    # Prepending path in case a system-installed binary needs to be
    # overridden...
    export PATH="$HOME/.local/share/../bin:$PATH"
    ;;
esac
