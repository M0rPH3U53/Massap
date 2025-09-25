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
BLEU='\033[34m'
ROUGE='\033[0;31m'
VERT='\033[0;32m'
GRIS='\033[0;37m'
JAUNE='\033[0;33m'
RESET='\033[0m'
BLANC='\033[1;37m'

# Obtenir le nom de l'utilisateur non root
USER_HOME=$(eval echo ~$SUDO_USER)

# Dossier pour les rapports
REPORT_DIR="${USER_HOME}/Massap"

# Cree le dossier pour les rapports
mkdir -p ${REPORT_DIR}

# Config Reseau
gateway='192.168.56.1'
mac='0a:00:27:00:00:00'

mass='res_ports.txt'
ports='ports.txt'

echo -ne "${BLEU}[i]${RESET} ${BLANC}IP:${RESET} "
read IP

echo -ne "${BLEU}[i]${RESET} ${BLANC}Rate:${RESET} "
read rate
echo " "

# Scan les 65535 ports avec Masscan
echo -ne "🔥 ${VERT}[+]${RESET} ${BLANC}Masscan${RESET} ${VERT}${IP}${RESET}..."
masscan ${IP} -p- --rate ${rate} --router-ip ${gateway} --router-mac ${mac} -oG ${mass} > /dev/null 2>&1
echo -e "${JAUNE}100%${RESET}"

# Verifie si des ports sont ouvers
if [ ! -s "${mass}" ]; then
    echo -e "${ROUGE}[-]${RESET} ${BLANC}Aucun port ouvert${RESET}"
    exit 1
else
    grep "open" ${mass} | awk '{print $7}' | cut -d'/' -f1 > ${ports}
fi

# Scan les ports d'apres les resultat de Masscan & genere un rapport
echo -ne "👁️ ${VERT}[+]${RESET} ${BLANC}Nmap${RESET} ${VERT}${IP}${RESET}..."
nmap -sS -A -sC -p $(cat ${ports} | tr '\n' ',') --script vuln -v -oX ${REPORT_DIR}/${IP}-tcp.xml ${IP} > /dev/null 2>&1
echo -e "${JAUNE}100%${RESET}"

# Affiche les ports ouverts
echo " "
grep "open" ${mass} | awk '{print "'"${VERT}"'[+]'"${RESET}"''"${BLANC}"' " $7 "'"${RESET}"'"}' | cut -d'/' -f1 | awk '{print $0 "'"${BLANC}"'/tcp open'"${RESET}"'"}'

# Converti le .xml en .html
xsltproc ${REPORT_DIR}/${IP}-tcp.xml > ${REPORT_DIR}/${IP}-tcp.html

# Supprime les fichier txt apres scan
rm ${ports} ${mass}

# Affiche le chemin du rapport nmap
view_rapports() {
	
    echo " "
    printf "==========================================================\n"
    echo -e "|${BLANC}                         Rapport                       ${RESET}|"
    printf "==========================================================\n"
    printf "| %-00s:%-49s |\n" "Nmap" "${REPORT_DIR}/${IP}-tcp.html"
    printf "==========================================================\n"

}

view_rapports
