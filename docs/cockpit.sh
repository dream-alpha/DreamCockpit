#!/bin/sh
rm -f /etc/opkg/cockpit-feed.conf
opkg update
src/gz cockpit https://dream-alpha.github.io/Cockpit-Feed/packages/all > /etc/opkg/cockpit-feed.conf
opkg update
opkg install enigma2-plugin-extensions-enigma2cockpit
init 2
init 3
