TEMP_DIR="$TEMP"
LOG_FILE="$HOME/cleanup_log.txt"
DATE=$(date +%Y-%m-%d)

echo "🧹 Cleanup started on $DATE" >> "$LOG_FILE"

find "$TEMP_DIR" -type f -mtime +7 -print -delete 2>/dev/null >> "$LOG_FILE"

echo "✅ Cleanup complete. Log saved at $LOG_FILE"
