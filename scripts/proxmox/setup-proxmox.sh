#!/usr/bin/env bash
#shellcheck disable=SC2317
_SCRIPT_VERSION="1.3"
_SCRIPT_NAME="SETUP PROXMOX"
###########################
# Configuration
###########################
_CFG_REMOVE_LICENSE_NOTIFICATION="true"
_CFG_REMOVE_OSPROBER="true"
_CFG_REMOVE_ENTERPRISE_REPO="true"
_CFG_REMOVE_CEPH_REPO="true"

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

###########################
# Error Handling
###########################
set -eE -o functrace
trap 'failure "${BASH_LINENO[*]}" "$LINENO" "${FUNCNAME[*]:-script}" "$?" "$BASH_COMMAND"' ERR

###########################
# Main
###########################
log "Starting script" "INFO"
log "Updating system" "INFO"
if [[ "$_CFG_REMOVE_LICENSE_NOTIFICATION" == "true" ]]; then
    log "Removing license notification" "INFO"
    sed -i 's/data.status !== "Active"/false/g' /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
fi
if [[ "$_CFG_REMOVE_OSPROBER" == "true" ]]; then
    log "Removing os-prober" "INFO"
    apt-get remove -y os-prober
fi
if [[ "$_CFG_REMOVE_ENTERPRISE_REPO" == "true" ]]; then
    log "Removing enterprise repo" "INFO"
    sed -i "s/^deb/#deb/g" /etc/apt/sources.list.d/pve-enterprise.list
fi
if [[ "$_CFG_REMOVE_CEPH_REPO" == "true" ]]; then
    log "Removing ceph repo" "INFO"
    sed -i "s/^deb/#deb/g" /etc/apt/sources.list.d/ceph.list
fi
if [[ "$_CFG_REMOVE_ENTERPRISE_REPO" == "true" || "$_CFG_REMOVE_CEPH_REPO" == "true" ]]; then
    log "Updating repositories" "INFO"
    apt-get update
fi


###########################
# Clean Exit
###########################
log "Performing clean exit" "INFO"
exit 0
