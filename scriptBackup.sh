#!/bin/bash

armaz_interno="/home/geraro"
data_format=$(date "+%d.%m.%y")
backup_path="/home/geraro/Documents"
padrao_final="backup-$data_format.tar"
armaz_externo="/mnt/backup"
log_path="/var/log/backupSTS.log"
#lsblk comando para ver dispositivos conectados
echo "você quer salvar o backup na máquina(PC) ou em um pen-drive(HD)? Caso escolha a segunda opção, tenha certeza que o pen-drive ou HD externo já esteja plugado na máquina!"
read RESP
if [ $RESP = PC ]; then
   tar -c -v -f "$armaz_interno/$padrao_final" $backup_path
fi
if [ $RESP = HD ]; then 
  if ! mountpoint -q -- $armaz_externo; then
     echo "não há nenhum dispositivo conectado ao computador"
     exit 1
  fi
     tar -czSpf "$armaz_externo/$padrao_final" "$backup_path"