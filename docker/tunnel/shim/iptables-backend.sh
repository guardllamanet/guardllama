#!/usr/bin/env bash
# shellcheck shell=dash
# Source https://github.com/k8s-at-home/container-images/blob/main/apps/wireguard/shim/iptables-backend.sh
# Original idea / source: https://github.com/kubernetes-sigs/iptables-wrappers/blob/master/iptables-wrapper-installer.sh

set -eu

IPTABLES_BACKEND=${IPTABLES_BACKEND:-""}

if [ -n "${IPTABLES_BACKEND}" ]; then
    case "${IPTABLES_BACKEND}" in
        nft|legacy)
            mode="${IPTABLES_BACKEND}"
            ;;
        *)
            echo "[ERROR] '${IPTABLES_BACKEND}' is not a valid value for IPTABLES_BACKEND. Please use either 'nft' or 'legacy'".
            exit 1
    esac
else
    # Detect whether the base system is using iptables-legacy or iptables-nft.
    # This assumes that some non-containerized process (eg kubelet) has already created some iptables rules.
    # In case of doubt, it will always pick legacy mode.
    num_legacy_lines=$( (sudo /usr/sbin/iptables-legacy-save || true; sudo /usr/sbin/ip6tables-legacy-save || true) 2>/dev/null | grep '^-' | wc -l)
    num_nft_lines=$( (sudo /usr/sbin/iptables-nft-save || true; sudo /usr/sbin/ip6tables-nft-save || true) 2>/dev/null | grep '^-' | wc -l)
    if [ "${num_legacy_lines}" -ge "${num_nft_lines}" ]; then
        mode=legacy
    else
        mode=nft
    fi
fi

# Update links to point to the selected binaries
/usr/bin/update-alternatives --set iptables "/usr/sbin/iptables-${mode}" > /dev/null || failed=1
/usr/bin/update-alternatives --set ip6tables "/usr/sbin/ip6tables-${mode}" > /dev/null || failed=1

if [ "${failed:-0}" = 1 ]; then
    echo "[ERROR] Unable to redirect iptables binaries. (Are you running in an unprivileged pod?)" 1>&2
    exit 1
fi

echo "[INFO] Running iptables in ${mode} mode"
