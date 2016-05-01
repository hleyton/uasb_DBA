#!/bin/bash
#Cargamos a la variable la fecha y la hora en este formato 2016-04-30_22:35:49
FECHA_HORA=$(date +%d-%m-%Y_%H:%M:%S)

#Debe existir la carpeta /home/backups que es donde almacenará todos los backups

#Genera el backup en texto plano
pg_dump -i -h localhost -p 5432 -U postgres -F p -b -v -f "/home/backups/bk_musicdb_$FECHA_HORA.sql" musicdb

#Genera el backup comprimido
pg_dump -i -h localhost -p 5432 -U postgres -F c -b -v -f "/home/backups/bk_musicdb_$FECHA_HORA.backup" musicdb
