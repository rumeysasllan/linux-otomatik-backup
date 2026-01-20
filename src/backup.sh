#!/bin/bash


SOURCE_DIR="$HOME/test-data"
BACKUP_DIR="$HOME/backups"


DATE=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"


tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"


echo "$(date) - Yedekleme tamamlandı: $BACKUP_FILE" >> "$BACKUP_DIR/backup.log"

echo "Yedekleme başarıyla tamamlandı."
