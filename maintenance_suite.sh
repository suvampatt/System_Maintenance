while true; do
    clear
    echo "=============================="
    echo "  🧰 SYSTEM MAINTENANCE SUITE"
    echo "=============================="
    echo "1. Backup Documents & Desktop"
    echo "2. Clean Temporary Files"
    echo "3. Monitor System Logs"
    echo "4. Exit"
    echo "=============================="

    # Prompt for input
    printf "Choose an option [1-4]: "
    read -r choice

    # Remove spaces and non-numeric characters
    choice=$(echo "$choice" | tr -cd '0-9')

    case "$choice" in
        1)
            echo "Running backup..."
            bash backup.sh
            ;;
        2)
            echo "Running cleanup..."
            bash cleanup.sh
            ;;
        3)
            echo "Running log monitor..."
            bash log_monitor.sh
            ;;
        4)
            echo "👋 Exiting..."
            exit 0
            ;;
        *)
            echo "❌ Invalid option! Please enter 1–4."
            ;;
    esac

    echo
    read -p "Press Enter to continue..." temp
done
