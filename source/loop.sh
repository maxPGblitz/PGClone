#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705 & https://github.com/PGBlitz/PGBlitz.com/graphs/contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
admin9705="9705"
sleep 20

while [[ "$admin9705" == "9705" ]]; do
   bash /pg/rclone/transfer.sh
   sleep 5
   primepath="$(cat /pg/var/hd.path)"
   find "$primepath/transfer" -mindepth 1 -type d -mmin +2 -empty -delete
done
