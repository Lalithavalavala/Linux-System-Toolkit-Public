
#!/bin/bash

while true
do
    echo "=========================="
    echo "   LINUX SYSTEM TOOLKIT"
    echo "=========================="

    echo "1. System Information"
    echo "2. File Management"
    echo "3. Disk Usage"
    echo "4. Process Monitoring"
    echo "5. Log Management"
    echo "6. Exit"

    read -p "Enter your choice: " choice

    if [ "$choice" -eq 1 ]
    then
        echo "----- SYSTEM INFORMATION -----"
        whoami
        date
        hostname

    elif [ "$choice" -eq 2 ]
    then
        echo "----- FILE MANAGEMENT -----"
        echo "1. List Files"
        echo "2. Create Folder"
        echo "3. Create File"

        read -p "Enter choice: " ch

        if [ "$ch" -eq 1 ]
        then
            ls

        elif [ "$ch" -eq 2 ]
        then
            read -p "Folder name: " name
            mkdir -p "$name"
            echo "Folder Created!"

        elif [ "$ch" -eq 3 ]
        then
            read -p "File name: " name
            touch "$name"
            echo "File Created!"

        else
            echo "Invalid Choice!"
        fi

    elif [ "$choice" -eq 3 ]
    then
        echo "----- DISK USAGE -----"
        df -h

    elif [ "$choice" -eq 4 ]
    then
        echo "----- RUNNING PROCESSES -----"
        ps

    elif [ "$choice" -eq 5 ]
then
    echo "----- LOG MANAGEMENT -----"

    echo "1. View Logs"
    echo "2. Count Log Lines"

    read -p "Enter choice: " ch

    if [ "$ch" -eq 1 ]
    then
        cat sample.log

    elif [ "$ch" -eq 2 ]
    then
        wc -l sample.log

    else
        echo "Invalid Choice!"
    fi
done
