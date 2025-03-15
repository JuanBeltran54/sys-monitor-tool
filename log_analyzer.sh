#!/bin/bash

# Archivo de logs a analizar
LOG_FILE="/var/log/syslog"

# Verifica si el archivo de log existe
if [ ! -f "$LOG_FILE" ]; then
    echo "El archivo de log $LOG_FILE no existe."
    exit 1
fi

# Extraer los 10 errores más recientes
echo "Últimos 10 errores encontrados en $LOG_FILE:"
grep -i "error" "$LOG_FILE" | tail -n 10

# Contar la cantidad de errores en el log
ERROR_COUNT=$(grep -ic "error" "$LOG_FILE")
echo "Total de errores encontrados: $ERROR_COUNT"
