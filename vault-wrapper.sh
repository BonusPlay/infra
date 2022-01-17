#!/bin/sh
# This is a simple wrapper to use gpg key as password for ansible vault
gpg --quiet --batch --use-agent --decrypt vault_pass.gpg
