#!/bin/sh

export BORG_REPO=/mnt/usb_drive/backups/borg_repo

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
