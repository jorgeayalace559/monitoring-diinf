#!/bin/bash
# Plugin de Checkmk para contar sesiones activas de Samba

SESSIONS=$(smbstatus -S | awk '!/^Service|^-/ && NF > 0' | wc -l)

echo "<<<local>>>"
echo "0 Samba_Sessions count=$SESSIONS Sesiones activas: $SESSIONS"
