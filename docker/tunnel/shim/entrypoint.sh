#!/usr/bin/env bash
# shellcheck shell=dash

set -e

. '/shim/iptables-backend.sh'
. '/shim/init-wireguard-module.sh'

"$@"
