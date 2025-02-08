#!/bin/bash

ascii() {
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

ascii


# Couleur ASCII
BLEU='\e[34m'
ROUGE='\033[0;31m'
VERT='\033[0;32m'
GRIS='\033[0;37m'
RESET='\033[0m'
BLANC='\033[1;37m'

# Obtenir le nom de l'utilisateur non-root
USER_HOME=$(eval echo ~$SUDO_USER)

# Dossier pour les rapports
REPORT_DIR="$USER_HOME/Massap"

# Cree le dossier pour les rapports
mkdir -p $REPORT_DIR

# Config Reseau
gateway='192.168.56.1'
mac='0a:00:27:00:00:00'


mass='res_ports.txt'
port='ports.txt'

echo -ne "${GRIS}[i]${RESET} ${BLANC}Scan IP:${RESET} "
read IP

echo -ne "${GRIS}[i]${RESET} ${BLANC}Rate:${RESET} "
read rate
echo " "

# Scan les 65535 ports
echo -ne "${VERT}[+]${RESET} ${BLANC}Scan Masscan${RESET} ${VERT}${IP}${RESET}..."
masscan ${IP} -p- --rate ${rate} --router-ip ${gateway} --router-mac ${mac} -oG ${mass} >/dev/null 2>&1
echo -e "${BLEU}100%${RESET}"

# Verifie si des ports sont ouvers
if [ ! -s "${mass}" ]; then
    echo "${ROUGE}[-]${RESET} ${BLANC}Aucun port ouvert${RESET}"
    exit 1
else
    grep "open" ${mass} | awk '{print $7}' | cut -d'/' -f1 >${port}
fi

# Scan les ports d'apres les resultat de masscan & genere un rapport
echo -ne "${VERT}[+]${RESET} ${BLANC}Scan Nmap${RESET} ${VERT}${IP}${RESET}..."
nmap -sS -A -sC -p $(cat ${port} | tr '\n' ',') --script vuln -v -oX $REPORT_DIR/${IP}-tcp.xml ${IP} >/dev/null 2>&1
echo -e "${BLEU}100%${RESET}"

# Converti le .xml en .html
xsltproc $REPORT_DIR/${IP}-tcp.xml > $REPORT_DIR/${IP}-tcp.html

# Supprime les fichier txt apres scan
rm ${port} ${mass}

# Affiche le rapport nmap
view_rapports() {
	
    echo " "
    printf "==========================================================\n"
    echo -e "|${BLANC}                         Rapports                       ${RESET}|"
    printf "==========================================================\n"
    printf "| %-00s:%-49s |\n" "Nmap" "$REPORT_DIR/${IP}-tcp.html"
    printf "==========================================================\n"

}

view_rapports
