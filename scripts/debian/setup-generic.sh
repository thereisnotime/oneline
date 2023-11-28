#!/usr/bin/env bash
#shellcheck disable=SC2317
_SCRIPT_VERSION="1.4"
_SCRIPT_NAME="SETUP GENERIC"
###########################
# Configuration
###########################
_SETUP_UTF8="true"

###########################
# Functions
###########################
function log() {
    local _BRed='\e[1;31m'    # Red
    local _BYellow='\e[1;33m' # Yellow
    local _BBlue='\e[1;34m'   # Blue
    local _BWhite='\e[1;37m'  # White
    local _NC="\e[m"          # Color Reset
    local _message="$1"
    local _level="$2"
    local _nl="\n"
    _timestamp=$(date +%d.%m.%Y-%d:%H:%M:%S-%Z)
    case $(echo "$_level" | tr '[:upper:]' '[:lower:]') in
    "info" | "information")
        echo -ne "${_BWhite}[INFO][${_SCRIPT_NAME} ${_SCRIPT_VERSION}][${_timestamp}]: ${_message}${_NC}${_nl}"
        ;;
    "warn" | "warning")
        echo -ne "${_BYellow}[WARN][${_SCRIPT_NAME} ${_SCRIPT_VERSION}][${_timestamp}]: ${_message}${_NC}${_nl}"
        ;;
    "err" | "error")
        echo -ne "${_BRed}[ERR][${_SCRIPT_NAME} ${_SCRIPT_VERSION}][${_timestamp}]: ${_message}${_NC}${_nl}"
        ;;
    *)
        echo -ne "${_BBlue}[UNKNOWN][${_SCRIPT_NAME} ${_SCRIPT_VERSION}][${_timestamp}]: ${_message}${_NC}${_nl}"
        ;;
    esac
}
function failure() {
    local _lineno="$2"
    local _fn="$3"
    local _exitstatus="$4"
    local _msg="$5"
    local _lineno_fns="${1% 0}"
    if [[ "$_lineno_fns" != "0" ]]; then _lineno="${_lineno} ${_lineno_fns}"; fi
    log "Error in ${BASH_SOURCE[1]}:${_fn}[${_lineno}] Failed with status ${_exitstatus}: ${_msg}" "ERROR"
}
function check_root() {
    log "Checking if script is run as root" "INFO"
    if [[ "$EUID" -ne 0 ]]; then
        log "This script must be run as root" "ERROR"
        exit 1
    fi
}
function set_locale() {
    log "Setting locale" "INFO"
    if [[ "$_SETUP_UTF8" == "true" ]]; then
        log "Setting up UTF-8" "INFO"
        locale-gen en_US.UTF-8
        sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen
        update-locale LANG=en_US.UTF-8
    fi
}
function update_system() {
    log "Updating system" "INFO"
    apt-get update
    apt-get upgrade -f
    apt-get dist-upgrade -f
    apt-get autoremove -f
}
function install_packages() {
    log "Installing packages" "INFO"
    apt-get install -y -f "$@"
}

###########################
# Error Handling
###########################
set -eE -o functrace
trap 'failure "${BASH_LINENO[*]}" "$LINENO" "${FUNCNAME[*]:-script}" "$?" "$BASH_COMMAND"' ERR

###########################
# Main
###########################
log "Starting script" "INFO"
check_root
update_system
set_locale
# NOTE: Takes around 229 MB
install_packages curl wget git vim nano htop tmux nmon screen net-tools iotop unzip sudo mtr sshpass ncdu autossh openssl sqlite3 rsync rclone gnupg jq tcpdump iputils-ping speedtest-cli ethtool pv socat yq

###########################
# Clean Exit
###########################
log "Performing clean exit" "INFO"
exit 0
