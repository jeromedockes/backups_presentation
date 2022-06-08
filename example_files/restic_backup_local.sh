#!/bin/sh

export RESTIC_REPOSITORY='/mnt/usb_drive/backups/restic_repo'

restic backup --exclude .cache $HOME

echo

restic forget                       \
       --verbose                       \
       --prune                         \
       --keep-last     5               \
       --keep-daily    7               \
       --keep-weekly   4               \
       --keep-monthly  6               \
