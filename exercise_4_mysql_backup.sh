#!/bin/bash
DBUSER="your_username"
DBPASS="your_password"
HOST="localhost"
DBNAME="futuremart_db"
BACKUP_DIR="/path/to/backup"

BACKUP_FILE="${BACKUP_DIR}/backup_$(date +%Y%m%d).sql"

mysqldump -u${DBUSER} -p${DBPASS} -h ${HOST} ${DBNAME} > ${BACKUP_FILE}

if [ $? -eq 0 ]; then
  echo "MySQL backup successful: ${BACKUP_FILE}"
else
  echo "MySQL backup failed."
fi