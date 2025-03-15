#!/bin/bash
# Directorio donde se guardarán los backups
BACKUP_DIR="$HOME/backups"
mkdir -p $BACKUP_DIR  # Crea el directorio si no existe

# Directorio que queremos respaldar (cámbialo según necesidad)
SOURCE_DIR="$HOME/Documents"

# Nombre del archivo de backup con fecha y hora
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F_%T).tar.gz"

# Crear el backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Mensaje de confirmación
echo "Backup completado: $BACKUP_FILE"
