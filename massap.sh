#!/bin/bash

# Config Reseau
gateway='10.20.30.1'
mac='AC:86:BD:5E:90:8C'

mass='res_ports.txt'
port='ports.txt'

read -p 'Entrer une IP: ' IP
read -p 'Entrer un rate: ' rate

# Scan les 65535 ports
masscan $IP -p- --rate $rate --router-ip $gateway --router-mac $mac -oG $mass

# Verifie si des ports sont ouvers
if [ ! -s "$mass" ]; then
    echo "Aucun port ouvert"
    exit 1
else
    grep "open" $mass | awk '{print $7}' | cut -d'/' -f1 > $port
fi

# Scan les ports d'apres les resultat de massap & genere un rapport
nmap -sS -A -sC -p $(cat $port | tr '\n' ',') --script vuln -v -oX $IP-tcp.xml $IP

# Converti le .xml en .html
xsltproc $IP-tcp.xml > $IP-tcp.html

# Supprime les fichier txt apres scan
rm $port $mass
