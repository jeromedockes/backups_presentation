#!/bin/sh

export BORG_PASSPHRASE='af!?:!cv;)}">b(hmhwk7\nj4e3`<^2+'
export BORG_REPO=jerome@borgbackupshost:backups/borg_repo

borg create -v --list --show-rc --stats '::{hostname}-{now}' /home

echo

borg prune                          \
     --verbose                       \
     --list                          \
     --prefix '{hostname}-'          \
     --show-rc                       \
     --keep-last     2               \
     --keep-daily    7               \
     --keep-weekly   4               \
     --keep-monthly  6               \
