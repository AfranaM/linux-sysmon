#!/bin/bash

# --- Functions ---

SystemInfo() {
    echo "--- System Information ---"
    echo "Hostname:"
    hostname
    echo
    echo "Uptime:"
    uptime
}

UserInfo() {
    echo "--- User Information ---"
    echo "Current User:"
    whoami
    echo
    echo "Logged In Users:"
    who
}

DiskInfo() {
    echo "--- Disk Usage ---"
    df -h
}

NetworkInfo() {
    echo "--- Network Information ---"
    ip a
}

# --- Main Menu Loop ---

option=""

while [ "$option" != "5" ]
do
    echo
    echo "======================================"
    echo "          SYSTEM UTILITY MENU         "
    echo "======================================"
    echo "1. System Information"
    echo "2. User Information"
    echo "3. Disk Usage"
    echo "4. Network Information"
    echo "5. Exit"
    echo "======================================"
    echo

    echo "Enter option:"
    read option
    echo

    case "$option" in
        1)
            SystemInfo
            ;;
        2)
            UserInfo
            ;;
        3)
            DiskInfo
            ;;
        4)
            NetworkInfo
            ;;
        5)
            echo "Exiting... Goodbye!"
            ;;
        *)
            echo "Invalid Option"
            ;;
    esac
done
