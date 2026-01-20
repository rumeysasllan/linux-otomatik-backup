#!/bin/bash

SOURCE_DIR="$1"
BACKUP_DIR="$2"

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
  echo "Kullanim: ./backup.sh <kaynak_klasor> <yedek_klasoru>"
  exit 1
fi

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

echo "$(date) - Yedekleme tamamlandi: $BACKUP_FILE (Kaynak: $SOURCE_DIR)" >> "$BACKUP_DIR/backup.log"

echo "Yedekleme basariyla tamamlandi."
