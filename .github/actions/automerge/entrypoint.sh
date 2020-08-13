#!/bin/sh

set -e

# Override `/github/home` set by GitHub Actions.
export HOME=/home/linuxbrew

export HOMEBREW_GITHUB_ACTION="$GITHUB_ACTION"
export HOMEBREW_GITHUB_ACTOR="$GITHUB_ACTOR"
export HOMEBREW_GITHUB_EVENT_NAME="$GITHUB_EVENT_NAME"
export HOMEBREW_GITHUB_EVENT_PATH="$GITHUB_EVENT_PATH"
export HOMEBREW_GITHUB_REPOSITORY="$GITHUB_REPOSITORY"
export HOMEBREW_GITHUB_REF="$GITHUB_REF"
export HOMEBREW_GITHUB_SHA="$GITHUB_SHA"
export HOMEBREW_GITHUB_TOKEN="$GITHUB_TOKEN"
export HOMEBREW_GITHUB_WORKFLOW="$GITHUB_WORKFLOW"
export HOMEBREW_GITHUB_WORKSPACE="$GITHUB_WORKSPACE"

brew ruby /automerge.rb
