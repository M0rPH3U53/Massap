#!/bin/bash

titre() {
    cat <<"EOF"

   *                                
 (  `                               
 )\))(      )             )         
((_)()\  ( /(  (   (   ( /(  `  )   
(_()((_) )(_)) )\  )\  )(_)) /(/(   
|  \/  |((_)_ ((_)((_)((_)_ ((_)_\  
| |\/| |/ _` |(_-<(_-</ _` || '_ \) 
|_|  |_|\__,_|/__//__/\__,_|| .__/  
                            |_|     

by M0rPH3U53
      
EOF
}

titre

mkdir -p $HOME/Massap/

# Config Reseau
gateway='10.20.30.1'
mac='AC:86:BD:5E:90:8C'

mass='res_ports.txt'
port='ports.txt'

read -p 'Entrer une IP: ' IP
read -p 'Entrer un rate: ' rate

echo -n "[+] Scan Massap ${IP}..."

# Scan les 65535 ports
masscan ${IP} -p- --rate ${rate} --router-ip ${gateway} --router-mac ${mac} -oG ${mass} > /dev/null 

# Verifie si des ports sont ouvers
if [ ! -s "${mass}" ]; then
    echo "Aucun port ouvert"
    exit 1
else
    grep "open" ${mass} | awk '{print $7}' | cut -d'/' -f1 > ${port}
fi

# Scan les ports d'apres les resultat de masscan & genere un rapport
nmap -sS -A -sC -p $(cat ${port} | tr '\n' ',') --script vuln -v -oX $HOME/Massap/${IP}-tcp.xml ${IP} > /dev/null


# Converti le .xml en .html
xsltproc $HOME/Massap/${IP}-tcp.xml > $HOME/Massap/${IP}-tcp.html

# Supprime les fichier txt apres scan
rm ${port} ${mass}

echo "terminer"


view_rapports() {

    echo "============================================================="
   echo "|                        Rapports                             |"
    echo "============================================================="
   echo "| Nmap : $HOME/Massap/${IP}-tcp.html                          |"
    echo "============================================================="
}

view_rapports
