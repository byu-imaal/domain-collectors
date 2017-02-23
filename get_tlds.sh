#!/usr/env bash

# Pulls down the root zone file and parses out just the TLDs

wget https://www.internic.net/domain/root.zone
cat root.zone | grep NS | awk '{ print $1 }' | sort --ignore-case -u > tlds.txt
rm root.zone

