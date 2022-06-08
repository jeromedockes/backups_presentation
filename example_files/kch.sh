#!/bin/bash
keychain --agents "ssh,gpg" --clear --inherit "local-once" --nogui \
         id_rsa 104DDD1D3FE30C9A4D5C26B2069C63C5831D73FE
