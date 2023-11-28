#!/usr/bin/env bash
#shellcheck disable=SC2317
_SCRIPT_VERSION="1.1"
_SCRIPT_NAME="EXTRA TERMINAL"
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
function install_packages() {
    log "Installing packages" "INFO"
    apt-get install -y -f "$@"
}
function setup_omb() {
    log "Setting up Oh My Bash" "INFO"
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
    log "Configuring Oh My Bash for all users" "INFO"

    # Set the minimum UID for non-system (non-default) users
    MIN_UID=1000

    # Define plugins and completions
    plugins=("git" "bashmarks")
    completions=("git" "ssh" "docker" "go" "makefile" "kubectl" "pip" "pip3" "system" "tmux")

    # Function to format arrays into a string for .bashrc
    format_array() {
        local array=("$@")
        printf "  %s\n" "${array[@]}"
    }

    # Loop through each line in /etc/passwd
    while IFS=: read -r username _ uid _ _ home_dir _; do
        # Process for root or non-default users
        if [ "$uid" -eq 0 ] || [ "$uid" -ge "$MIN_UID" ] && [ -d "$home_dir" ]; then
            bashrc_file="$home_dir/.bashrc"
            if [ -f "$bashrc_file" ]; then
                log "Updating .bashrc for User: $username" "INFO"

                # Append and modify the .bashrc file
                echo "DISABLE_UPDATE_PROMPT=true" >> "$bashrc_file"
                sed -i 's/OSH_THEME=".*"/OSH_THEME="90210"/g' "$bashrc_file"

                # Configure language
                config='export LANG=en_US.UTF-8'
                if ! grep -q "$config" "$bashrc_file"; then
                    echo "$config" >> "$bashrc_file"
                else
                    sed -i "s/# $config/$config/" "$bashrc_file"
                fi

                # Backup original .bashrc
                cp "$bashrc_file" "${bashrc_file}.bak"

                # Read .bashrc, make changes, and write back
                {
                    rm "$bashrc_file"
                    while IFS= read -r line; do
                        if [[ $line == "plugins=("* ]]; then
                            echo "plugins=("
                            format_array "${plugins[@]}"
                            echo ")"
                            continue
                        fi
                        if [[ $line == "completions=("* ]]; then
                            echo "completions=("
                            format_array "${completions[@]}"
                            echo ")"
                            continue
                        fi
                        echo "$line"
                    done < "${bashrc_file}.bak"
                } > "$bashrc_file"
            fi
        fi
    done < /etc/passwd
}
function set_bash_history_limit() {
    log "Setting bash history limit" "INFO"
    # Set the minimum UID for non-system users
    MIN_UID=1000

    # Loop through each line in /etc/passwd
    while IFS=: read -r username _ uid _ _ home_dir _; do
        # Process for root or non-default users
        if [ "$uid" -eq 0 ] || [ "$uid" -ge "$MIN_UID" ]; then
            bashrc_file="$home_dir/.bashrc"

            # Check if .bashrc exists for the user
            if [ -f "$bashrc_file" ]; then
                log "Updating .bashrc for User: $username" "INFO"

                # Function to update or append a configuration line
                update_or_append() {
                    local file=$1
                    local config=$2
                    local value=$3
                    if grep -q "^$config" "$file"; then
                        sed -i "s/^$config=.*/$config=$value/" "$file"
                    else
                        echo "$config=$value" >> "$file"
                    fi
                }

                # Set HISTSIZE and HISTFILESIZE
                update_or_append "$bashrc_file" "export HISTSIZE" "10000"
                update_or_append "$bashrc_file" "export HISTFILESIZE" "10000"

                # Set HISTTIMEFORMAT to include timestamps
                update_or_append "$bashrc_file" "export HISTTIMEFORMAT" "'%F %T '"
            fi
        fi
    done < /etc/passwd
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
setup_omb
set_bash_history_limit

###########################
# Clean Exit
###########################
log "Performing clean exit" "INFO"
exit 0
