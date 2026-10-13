#!/usr/bin/env bash
sudo chown -R "$(whoami)" /var/lib/rstudio-server
env | grep -E '^(GITHUB_TOKEN|GITHUB_USER|GIT_(AUTHOR|COMMITTER)_(NAME|EMAIL))=' > ~/.Renviron
rstudio-server start
