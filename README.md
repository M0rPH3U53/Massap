# Massap

Combinaisons de 2 outils de scanners de port

<span style="color: #dddddd;">👁️</span> Nmap  
<span style="color: #dddddd;">⚡</span> Masscan

# 🔧 Installation

```
┌─[parrot@parrot]─[~]
└──╼ $ sudo apt install masscan nmap xsltproc
```
# Config reseau
A modifier selon vos parametre reseau

```
# Config Reseau
gateway='192.168.56.1'
mac='0a:00:27:00:00:00'
```

# 👁️ Previsualisation

```
┌─[parrot@parrot]─[~/Documents]
└──╼ $sudo sh massap.sh

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
      
[i] Scan IP: 192.168.56.74
[i] Rate: 1000
 
[+] Scan Masscan 192.168.56.74...100%
[+] Scan Nmap 192.168.56.74...100%

[+] 22/tcp open
[+] 80/tcp open
 
==========================================================
|                         Rapports                       |
==========================================================
| Nmap:/home/parrot/Massap/192.168.56.74-tcp.html        |
==========================================================

```





