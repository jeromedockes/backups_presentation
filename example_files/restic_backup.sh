#!/bin/sh

. "$HOME/.keychain/$(hostname)-sh"
. "$HOME/.keychain/$(hostname)-sh-gpg"
export RESTIC_REPOSITORY='sftp:jerome@backupshost:backups/restic_repo'
export RESTIC_PASSWORD_COMMAND="gpg --use-agent --quiet --batch -d $HOME/restic_repo.asc"

restic backup --exclude .cache $HOME

echo

restic forget                       \
       --verbose                       \
       --prune                         \
       --keep-last     5               \
       --keep-daily    7               \
       --keep-weekly   4               \
       --keep-monthly  6               \
