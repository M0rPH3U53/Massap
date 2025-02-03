#!/bin/bash

gateway='10.20.30.1'
mac='AC:86:BD:5E:90:8C'

mass='res_ports.txt'
port='ports.txt'

read -p 'Entrer une IP: ' IP
read -p 'Entrer un rate: ' rate

masscan $IP -p- --rate $rate --router-ip $gateway --router-mac $mac -oG $mass

if [ ! -s "$mass" ]; then
    echo "Aucun port ouvert"
    exit 1
else
    # Extraire les ports ouverts et les enregistrer dans $port
    grep "open" $mass | awk '{print $7}' | cut -d'/' -f1 > $port
fi

nmap -sS -A -sC -p $(cat $port | tr '\n' ',') --script vuln -v -oX $IP-tcp.xml $IP

xsltproc $IP-tcp.xml > $IP-tcp.html

rm $port $mass
