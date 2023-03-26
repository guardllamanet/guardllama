#!/bin/sh
# shellcheck shell=dash

set -e
set -o noglob

GUARDLLAMA_DOWNLOAD_URL="${GUARDLLAMA_DOWNLOAD_URL:-https://release.guardllama.net/latest}"
GUARDLLAMA_DESTIATION_DIR="${GUARDLLAMA_DESTIATION_DIR:-/usr/local/bin}"

main() {
  downloader --check
  need_cmd uname
  need_cmd tar
  need_cmd mktemp
  need_cmd chown
  need_cmd cp

  get_architecture || return 1
  local _arch="$RETVAL"

  local _file="guardllama_${_arch}.tar.gz"
  local _url="${GUARDLLAMA_DOWNLOAD_URL}/${_file}"
  local _destdir="${GUARDLLAMA_DESTIATION_DIR}"
  local _guardllama_dest="${_destdir}/glm-installer"
  local _tmpdir
  _tmpdir="$(mktemp -d -t guardllama-install.XXXXXXXXXX)"

  if [ "${SUDO}" = "false" ]; then
    SUDO=
  else
    SUDO=sudo
  fi
  if [ "$(id -u)" -eq 0 ]; then
    SUDO=
  fi

  ensure downloader "${_url}" "${_tmpdir}/${_file}"
  ensure tar -xf "${_tmpdir}/${_file}" --directory "${_tmpdir}"
  [ -n "${SUDO}" ] && ensure ${SUDO} chown -R root:root "${_tmpdir}/bin"
  ensure ${SUDO} cp -r "${_tmpdir}/bin/." "${_destdir}/"

  ensure printf "Installing with %s\n" "$(${_guardllama_dest} version)"
  ignore "${_guardllama_dest}" install "$@"

  local _retval=$?
  return "$_retval"
}

# This is just for indicating that commands' results are being
# intentionally ignored. Usually, because it's being executed
# as part of error handling.
ignore() {
  "$@"
}

need_cmd() {
  if ! check_cmd "$1"; then
    err "need '$1' (command not found)"
  fi
}

check_cmd() {
  command -v "$1" > /dev/null 2>&1
}

# Run a command that should never fail. If the command fails execution
# will immediately terminate with an error showing the failing
# command.
ensure() {
  if ! "$@"; then err "command failed: $*"; fi
}

say() {
  printf 'install: %s\n' "$1"
}

err() {
  say "$1" >&2
  exit 1
}

# This wraps curl or wget. Try curl first, if not installed,
# use wget instead.
downloader() {
  local _dld
  if check_cmd curl; then
    _dld=curl
  elif check_cmd wget; then
    _dld=wget
  else
    _dld='curl or wget' # to be used in error message of need_cmd
  fi

  if [ "$1" = --check ]; then
    need_cmd "$_dld"
  elif [ "$_dld" = curl ]; then
    if [ -z "$2" ]; then
      curl --silent --show-error --fail --location "$1"
    else
      curl --silent --show-error --fail --location "$1" --output "$2"
    fi
  elif [ "$_dld" = wget ]; then
    if [ -z "$2" ]; then
      wget "$1"
    else
      wget "$1" -O "$2"
    fi
  else
    err "Unknown downloader"   # should not reach here
  fi
}

get_architecture() {
  local _ostype _cputype _arch
  _ostype="$(uname -s)"
  _cputype="$(uname -m)"

  if [ "$_ostype" = Darwin ] && [ "$_cputype" = i386 ]; then
    # Darwin `uname -m` lies
    if sysctl hw.optional.x86_64 | grep -q ': 1'; then
      _cputype=x86_64
    fi
  fi

  case "$_ostype" in
    Linux)
      _ostype=linux
      ;;

    Darwin)
      _ostype=darwin
      ;;

    *)
      err "unrecognized OS type: $_ostype"
      ;;
  esac

  case "$_cputype" in
    i386 | i486 | i686 | i786 | x86)
      _cputype=386
      ;;

    xscale | arm | armv6l | armv7l |armv8l)
      _cputype=arm
      ;;

    aarch64 | arm64)
      _cputype=arm64
      ;;

    x86_64 | x86-64 | x64 | amd64)
      _cputype=amd64
      ;;

    *)
      err "unknown CPU type: $_cputype"
  esac

  _arch="${_ostype}_${_cputype}"

  RETVAL="$_arch"
}

main "$@" || exit 1
