# Massap

Combinaisons de 2 outils de scanners de port

<span style="color: #dddddd;">👁️</span> Nmap  
<span style="color: #dddddd;">⚡</span> Masscan

# 🔧 Installation

```
┌─[parrot@parrot]─[~]
└──╼ $ sudo apt install masscan nmap
```
&nbsp;
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
      
Entrer une IP: 192.168.56.74
Entrer un rate: 1000
Starting masscan 1.3.2 (http://bit.ly/14GZzcT) at 2025-02-06 18:52:29 GMT
Initiating SYN Stealth Scan
Scanning 1 hosts [65535 ports/host]
Starting Nmap 7.94SVN ( https://nmap.org ) at 2025-02-06 19:58 CET           
NSE: Loaded 150 scripts for scanning.
NSE: Script Pre-scanning.
Initiating NSE at 19:58
Completed NSE at 19:58, 10.01s elapsed
Initiating NSE at 19:58
Completed NSE at 19:58, 0.00s elapsed
Initiating ARP Ping Scan at 19:58
Scanning 192.168.56.74 [1 port]
Completed ARP Ping Scan at 19:58, 0.07s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 19:58
Completed Parallel DNS resolution of 1 host. at 19:58, 0.00s elapsed
Initiating SYN Stealth Scan at 19:58
Scanning 192.168.56.74 [2 ports]
Discovered open port 22/tcp on 192.168.56.74
Discovered open port 80/tcp on 192.168.56.74
Completed SYN Stealth Scan at 19:58, 0.01s elapsed (2 total ports)
Initiating Service scan at 19:58
Scanning 2 services on 192.168.56.74
Completed Service scan at 19:58, 6.04s elapsed (2 services on 1 host)
Initiating OS detection (try #1) against 192.168.56.74
NSE: Script scanning 192.168.56.74.
Initiating NSE at 19:58
Completed NSE at 19:59, 21.42s elapsed
Initiating NSE at 19:59
Completed NSE at 19:59, 0.04s elapsed
Nmap scan report for 192.168.56.74
Host is up (0.0036s latency).

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 8.0 (protocol 2.0)
| vulners: 
|   cpe:/a:openbsd:openssh:8.0: 
|     	95499236-C9FE-56A6-9D7D-E943A24B633A	10.0	https://vulners.com/githubexploit/95499236-C9FE-56A6-9D7D-E943A24B633A	*EXPLOIT*
|     	2C119FFA-ECE0-5E14-A4A4-354A2C38071A	10.0	https://vulners.com/githubexploit/2C119FFA-ECE0-5E14-A4A4-354A2C38071A	*EXPLOIT*
|     	CVE-2023-38408	9.8	https://vulners.com/cve/CVE-2023-38408
|     	B8190CDB-3EB9-5631-9828-8064A1575B23	9.8	https://vulners.com/githubexploit/B8190CDB-3EB9-5631-9828-8064A1575B23	*EXPLOIT*
|     	8FC9C5AB-3968-5F3C-825E-E8DB5379A623	9.8	https://vulners.com/githubexploit/8FC9C5AB-3968-5F3C-825E-E8DB5379A623	*EXPLOIT*
|     	8AD01159-548E-546E-AA87-2DE89F3927EC	9.8	https://vulners.com/githubexploit/8AD01159-548E-546E-AA87-2DE89F3927EC	*EXPLOIT*
|     	887EB570-27D3-11EE-ADBA-C80AA9043978	9.8	https://vulners.com/freebsd/887EB570-27D3-11EE-ADBA-C80AA9043978
|     	5E6968B4-DBD6-57FA-BF6E-D9B2219DB27A	9.8	https://vulners.com/githubexploit/5E6968B4-DBD6-57FA-BF6E-D9B2219DB27A	*EXPLOIT*
|     	33D623F7-98E0-5F75-80FA-81AA666D1340	9.8	https://vulners.com/githubexploit/33D623F7-98E0-5F75-80FA-81AA666D1340	*EXPLOIT*
|     	0221525F-07F5-5790-912D-F4B9E2D1B587	9.8	https://vulners.com/githubexploit/0221525F-07F5-5790-912D-F4B9E2D1B587	*EXPLOIT*
|     	PACKETSTORM:179290	8.1	https://vulners.com/packetstorm/PACKETSTORM:179290	*EXPLOIT*
|     	FB2E9ED1-43D7-585C-A197-0D6628B20134	8.1	https://vulners.com/githubexploit/FB2E9ED1-43D7-585C-A197-0D6628B20134	*EXPLOIT*
|     	FA3992CE-9C4C-5350-8134-177126E0BD3F	8.1	https://vulners.com/githubexploit/FA3992CE-9C4C-5350-8134-177126E0BD3F	*EXPLOIT*
|     	F8981437-1287-5B69-93F1-657DFB1DCE59	8.1	https://vulners.com/githubexploit/F8981437-1287-5B69-93F1-657DFB1DCE59	*EXPLOIT*
|     	F58A5CB2-2174-586F-9CA9-4C47F8F38B5E	8.1	https://vulners.com/githubexploit/F58A5CB2-2174-586F-9CA9-4C47F8F38B5E	*EXPLOIT*
|     	F1A00122-3797-11EF-B611-84A93843EB75	8.1	https://vulners.com/freebsd/F1A00122-3797-11EF-B611-84A93843EB75
|     	EFD615F0-8F17-5471-AA83-0F491FD497AF	8.1	https://vulners.com/githubexploit/EFD615F0-8F17-5471-AA83-0F491FD497AF	*EXPLOIT*
|     	EC20B9C2-6857-5848-848A-A9F430D13EEB	8.1	https://vulners.com/githubexploit/EC20B9C2-6857-5848-848A-A9F430D13EEB	*EXPLOIT*
|     	EB13CBD6-BC93-5F14-A210-AC0B5A1D8572	8.1	https://vulners.com/githubexploit/EB13CBD6-BC93-5F14-A210-AC0B5A1D8572	*EXPLOIT*
|     	E660E1AF-7A87-57E2-AEEF-CA14E1FEF7CD	8.1	https://vulners.com/githubexploit/E660E1AF-7A87-57E2-AEEF-CA14E1FEF7CD	*EXPLOIT*
|     	E543E274-C20A-582A-8F8E-F8E3F381C345	8.1	https://vulners.com/githubexploit/E543E274-C20A-582A-8F8E-F8E3F381C345	*EXPLOIT*
|     	E34FCCEC-226E-5A46-9B1C-BCD6EF7D3257	8.1	https://vulners.com/githubexploit/E34FCCEC-226E-5A46-9B1C-BCD6EF7D3257	*EXPLOIT*
|     	E24EEC0A-40F7-5BBC-9E4D-7B13522FF915	8.1	https://vulners.com/githubexploit/E24EEC0A-40F7-5BBC-9E4D-7B13522FF915	*EXPLOIT*
|     	DC798E98-BA77-5F86-9C16-0CF8CD540EBB	8.1	https://vulners.com/githubexploit/DC798E98-BA77-5F86-9C16-0CF8CD540EBB	*EXPLOIT*
|     	DC473885-F54C-5F76-BAFD-0175E4A90C1D	8.1	https://vulners.com/githubexploit/DC473885-F54C-5F76-BAFD-0175E4A90C1D	*EXPLOIT*
|     	D85F08E9-DB96-55E9-8DD2-22F01980F360	8.1	https://vulners.com/githubexploit/D85F08E9-DB96-55E9-8DD2-22F01980F360	*EXPLOIT*
|     	D572250A-BE94-501D-90C4-14A6C9C0AC47	8.1	https://vulners.com/githubexploit/D572250A-BE94-501D-90C4-14A6C9C0AC47	*EXPLOIT*
|     	D1E049F1-393E-552D-80D1-675022B26911	8.1	https://vulners.com/githubexploit/D1E049F1-393E-552D-80D1-675022B26911	*EXPLOIT*
|     	CFEBF7AF-651A-5302-80B8-F8146D5B33A6	8.1	https://vulners.com/githubexploit/CFEBF7AF-651A-5302-80B8-F8146D5B33A6	*EXPLOIT*
|     	CF80DDA9-42E7-5E06-8DA8-84C72658E191	8.1	https://vulners.com/githubexploit/CF80DDA9-42E7-5E06-8DA8-84C72658E191	*EXPLOIT*
|     	CB2926E1-2355-5C82-A42A-D4F72F114F9B	8.1	https://vulners.com/githubexploit/CB2926E1-2355-5C82-A42A-D4F72F114F9B	*EXPLOIT*
|     	C6FB6D50-F71D-5870-B671-D6A09A95627F	8.1	https://vulners.com/githubexploit/C6FB6D50-F71D-5870-B671-D6A09A95627F	*EXPLOIT*
|     	C5B2D4A1-8C3B-5FF7-B620-EDE207B027A0	8.1	https://vulners.com/githubexploit/C5B2D4A1-8C3B-5FF7-B620-EDE207B027A0	*EXPLOIT*
|     	C185263E-3E67-5550-B9C0-AB9C15351960	8.1	https://vulners.com/githubexploit/C185263E-3E67-5550-B9C0-AB9C15351960	*EXPLOIT*
|     	BDA609DA-6936-50DC-A325-19FE2CC68562	8.1	https://vulners.com/githubexploit/BDA609DA-6936-50DC-A325-19FE2CC68562	*EXPLOIT*
|     	AA539633-36A9-53BC-97E8-19BC0E4E8D37	8.1	https://vulners.com/githubexploit/AA539633-36A9-53BC-97E8-19BC0E4E8D37	*EXPLOIT*
|     	A377249D-3C48-56C9-98D6-C47013B3A043	8.1	https://vulners.com/githubexploit/A377249D-3C48-56C9-98D6-C47013B3A043	*EXPLOIT*
|     	9CDFE38D-80E9-55D4-A7A8-D5C20821303E	8.1	https://vulners.com/githubexploit/9CDFE38D-80E9-55D4-A7A8-D5C20821303E	*EXPLOIT*
|     	9A6454E9-662A-5A75-8261-73F46290FC3C	8.1	https://vulners.com/githubexploit/9A6454E9-662A-5A75-8261-73F46290FC3C	*EXPLOIT*
|     	92254168-3B26-54C9-B9BE-B4B7563586B5	8.1	https://vulners.com/githubexploit/92254168-3B26-54C9-B9BE-B4B7563586B5	*EXPLOIT*
|     	91752937-D1C1-5913-A96F-72F8B8AB4280	8.1	https://vulners.com/githubexploit/91752937-D1C1-5913-A96F-72F8B8AB4280	*EXPLOIT*
|     	906CD901-3758-5F2C-8FA6-386BF9378AB3	8.1	https://vulners.com/githubexploit/906CD901-3758-5F2C-8FA6-386BF9378AB3	*EXPLOIT*
|     	896B5857-A9C8-5342-934A-74F1EA1934CF	8.1	https://vulners.com/githubexploit/896B5857-A9C8-5342-934A-74F1EA1934CF	*EXPLOIT*
|     	81F0C05A-8650-5DE8-97E9-0D89F1807E5D	8.1	https://vulners.com/githubexploit/81F0C05A-8650-5DE8-97E9-0D89F1807E5D	*EXPLOIT*
|     	7C7167AF-E780-5506-BEFA-02E5362E8E48	8.1	https://vulners.com/githubexploit/7C7167AF-E780-5506-BEFA-02E5362E8E48	*EXPLOIT*
|     	7AA8980D-D89F-57EB-BFD1-18ED3AB1A7DD	8.1	https://vulners.com/githubexploit/7AA8980D-D89F-57EB-BFD1-18ED3AB1A7DD	*EXPLOIT*
|     	79FE1ED7-EB3D-5978-A12E-AAB1FFECCCAC	8.1	https://vulners.com/githubexploit/79FE1ED7-EB3D-5978-A12E-AAB1FFECCCAC	*EXPLOIT*
|     	795762E3-BAB4-54C6-B677-83B0ACC2B163	8.1	https://vulners.com/githubexploit/795762E3-BAB4-54C6-B677-83B0ACC2B163	*EXPLOIT*
|     	77DAD6A9-8142-5591-8605-C5DADE4EE744	8.1	https://vulners.com/githubexploit/77DAD6A9-8142-5591-8605-C5DADE4EE744	*EXPLOIT*
|     	743E5025-3BB8-5EC4-AC44-2AA679730661	8.1	https://vulners.com/githubexploit/743E5025-3BB8-5EC4-AC44-2AA679730661	*EXPLOIT*
|     	73A19EF9-346D-5B2B-9792-05D9FE3414E2	8.1	https://vulners.com/githubexploit/73A19EF9-346D-5B2B-9792-05D9FE3414E2	*EXPLOIT*
|     	6FD8F914-B663-533D-8866-23313FD37804	8.1	https://vulners.com/githubexploit/6FD8F914-B663-533D-8866-23313FD37804	*EXPLOIT*
|     	6E81EAE5-2156-5ACB-9046-D792C7FAF698	8.1	https://vulners.com/githubexploit/6E81EAE5-2156-5ACB-9046-D792C7FAF698	*EXPLOIT*
|     	6B78D204-22B0-5D11-8A0C-6313958B473F	8.1	https://vulners.com/githubexploit/6B78D204-22B0-5D11-8A0C-6313958B473F	*EXPLOIT*
|     	649197A2-0224-5B5C-9C4E-B5791D42A9FB	8.1	https://vulners.com/githubexploit/649197A2-0224-5B5C-9C4E-B5791D42A9FB	*EXPLOIT*
|     	608FA50C-AEA1-5A83-8297-A15FC7D32A7C	8.1	https://vulners.com/githubexploit/608FA50C-AEA1-5A83-8297-A15FC7D32A7C	*EXPLOIT*
|     	5D2CB1F8-DC04-5545-8BC7-29EE3DA8890E	8.1	https://vulners.com/githubexploit/5D2CB1F8-DC04-5545-8BC7-29EE3DA8890E	*EXPLOIT*
|     	5C81C5C1-22D4-55B3-B843-5A9A60AAB6FD	8.1	https://vulners.com/githubexploit/5C81C5C1-22D4-55B3-B843-5A9A60AAB6FD	*EXPLOIT*
|     	58750D49-7302-11EF-8C95-195D300202B3	8.1	https://vulners.com/freebsd/58750D49-7302-11EF-8C95-195D300202B3
|     	56F97BB2-3DF6-5588-82AF-1D7B77F9AD45	8.1	https://vulners.com/githubexploit/56F97BB2-3DF6-5588-82AF-1D7B77F9AD45	*EXPLOIT*
|     	53BCD84F-BD22-5C9D-95B6-4B83627AB37F	8.1	https://vulners.com/githubexploit/53BCD84F-BD22-5C9D-95B6-4B83627AB37F	*EXPLOIT*
|     	535C5505-40BC-5D18-B346-1FDF036F0B08	8.1	https://vulners.com/githubexploit/535C5505-40BC-5D18-B346-1FDF036F0B08	*EXPLOIT*
|     	48603E8F-B170-57EE-85B9-67A7D9504891	8.1	https://vulners.com/githubexploit/48603E8F-B170-57EE-85B9-67A7D9504891	*EXPLOIT*
|     	4748B283-C2F6-5924-8241-342F98EEC2EE	8.1	https://vulners.com/githubexploit/4748B283-C2F6-5924-8241-342F98EEC2EE	*EXPLOIT*
|     	452ADB71-199C-561E-B949-FCDE6288B925	8.1	https://vulners.com/githubexploit/452ADB71-199C-561E-B949-FCDE6288B925	*EXPLOIT*
|     	418FD78F-82D2-5748-9EE9-CAFC34111864	8.1	https://vulners.com/githubexploit/418FD78F-82D2-5748-9EE9-CAFC34111864	*EXPLOIT*
|     	3D426DCE-96C7-5F01-B0AB-4B11C9557441	8.1	https://vulners.com/githubexploit/3D426DCE-96C7-5F01-B0AB-4B11C9557441	*EXPLOIT*
|     	31CC906F-9328-5944-B370-FBD98DF0DDD3	8.1	https://vulners.com/githubexploit/31CC906F-9328-5944-B370-FBD98DF0DDD3	*EXPLOIT*
|     	2FFB4379-2BD1-569F-9F38-1B6D272234C9	8.1	https://vulners.com/githubexploit/2FFB4379-2BD1-569F-9F38-1B6D272234C9	*EXPLOIT*
|     	1FFDA397-F480-5C74-90F3-060E1FE11B2E	8.1	https://vulners.com/githubexploit/1FFDA397-F480-5C74-90F3-060E1FE11B2E	*EXPLOIT*
|     	1F7A6000-9E6D-511C-B0F6-7CADB7200761	8.1	https://vulners.com/githubexploit/1F7A6000-9E6D-511C-B0F6-7CADB7200761	*EXPLOIT*
|     	1CF00BB8-B891-5347-A2DC-2C6A6BFF7C99	8.1	https://vulners.com/githubexploit/1CF00BB8-B891-5347-A2DC-2C6A6BFF7C99	*EXPLOIT*
|     	1AB9F1F4-9798-59A0-9213-1D907E81E7F6	8.1	https://vulners.com/githubexploit/1AB9F1F4-9798-59A0-9213-1D907E81E7F6	*EXPLOIT*
|     	1A779279-F527-5C29-A64D-94AAA4ADD6FD	8.1	https://vulners.com/githubexploit/1A779279-F527-5C29-A64D-94AAA4ADD6FD	*EXPLOIT*
|     	15C36683-070A-5CC1-B21F-5F0BF974D9D3	8.1	https://vulners.com/githubexploit/15C36683-070A-5CC1-B21F-5F0BF974D9D3	*EXPLOIT*
|     	1337DAY-ID-39674	8.1	https://vulners.com/zdt/1337DAY-ID-39674	*EXPLOIT*
|     	123C2683-74BE-5320-AA3A-C376C8E3A992	8.1	https://vulners.com/githubexploit/123C2683-74BE-5320-AA3A-C376C8E3A992	*EXPLOIT*
|     	11F020AC-F907-5606-8805-0516E06160EE	8.1	https://vulners.com/githubexploit/11F020AC-F907-5606-8805-0516E06160EE	*EXPLOIT*
|     	108E1D25-1F7E-534C-97CD-3F6045E32B98	8.1	https://vulners.com/githubexploit/108E1D25-1F7E-534C-97CD-3F6045E32B98	*EXPLOIT*
|     	0FC4BE81-312B-51F4-9D9B-66D8B5C093CD	8.1	https://vulners.com/githubexploit/0FC4BE81-312B-51F4-9D9B-66D8B5C093CD	*EXPLOIT*
|     	0F9B3655-C7D4-55A9-8EB5-2EAD9CEAB180	8.1	https://vulners.com/githubexploit/0F9B3655-C7D4-55A9-8EB5-2EAD9CEAB180	*EXPLOIT*
|     	0E9294FD-6B44-503A-84C2-C6E76E53B0B7	8.1	https://vulners.com/githubexploit/0E9294FD-6B44-503A-84C2-C6E76E53B0B7	*EXPLOIT*
|     	0A8CA57C-ED38-5301-A03A-C841BD3082EC	8.1	https://vulners.com/githubexploit/0A8CA57C-ED38-5301-A03A-C841BD3082EC	*EXPLOIT*
|     	CVE-2020-15778	7.8	https://vulners.com/cve/CVE-2020-15778
|     	CVE-2019-16905	7.8	https://vulners.com/cve/CVE-2019-16905
|     	SSV:92579	7.5	https://vulners.com/seebug/SSV:92579	*EXPLOIT*
|     	PACKETSTORM:173661	7.5	https://vulners.com/packetstorm/PACKETSTORM:173661	*EXPLOIT*
|     	F0979183-AE88-53B4-86CF-3AF0523F3807	7.5	https://vulners.com/githubexploit/F0979183-AE88-53B4-86CF-3AF0523F3807	*EXPLOIT*
|     	1337DAY-ID-26576	7.5	https://vulners.com/zdt/1337DAY-ID-26576	*EXPLOIT*
|     	CVE-2021-41617	7.0	https://vulners.com/cve/CVE-2021-41617
|     	2A1B931F-2B86-11EC-8ACD-C80AA9043978	7.0	https://vulners.com/freebsd/2A1B931F-2B86-11EC-8ACD-C80AA9043978
|     	C94132FD-1FA5-5342-B6EE-0DAF45EEFFE3	6.8	https://vulners.com/githubexploit/C94132FD-1FA5-5342-B6EE-0DAF45EEFFE3	*EXPLOIT*
|     	10213DBE-F683-58BB-B6D3-353173626207	6.8	https://vulners.com/githubexploit/10213DBE-F683-58BB-B6D3-353173626207	*EXPLOIT*
|     	CVE-2023-51385	6.5	https://vulners.com/cve/CVE-2023-51385
|     	CVE-2023-48795	5.9	https://vulners.com/cve/CVE-2023-48795
|     	CVE-2020-14145	5.9	https://vulners.com/cve/CVE-2020-14145
|     	54E1BB01-2C69-5AFD-A23D-9783C9D9FC4C	5.9	https://vulners.com/githubexploit/54E1BB01-2C69-5AFD-A23D-9783C9D9FC4C	*EXPLOIT*
|     	CVE-2016-20012	5.3	https://vulners.com/cve/CVE-2016-20012
|     	CVE-2021-36368	3.7	https://vulners.com/cve/CVE-2021-36368
|     	PACKETSTORM:140261	0.0	https://vulners.com/packetstorm/PACKETSTORM:140261	*EXPLOIT*
|     	5C971D4B-2DD3-5894-9EC2-DAB952B4740D	0.0	https://vulners.com/githubexploit/5C971D4B-2DD3-5894-9EC2-DAB952B4740D	*EXPLOIT*
|_    	39E70D1A-F5D8-59D5-A0CF-E73D9BAA3118	0.0	https://vulners.com/githubexploit/39E70D1A-F5D8-59D5-A0CF-E73D9BAA3118	*EXPLOIT*
80/tcp open  http    Apache httpd 2.4.37 ((centos))
| vulners: 
|   cpe:/a:apache:http_server:2.4.37: 
|     	95499236-C9FE-56A6-9D7D-E943A24B633A	10.0	https://vulners.com/githubexploit/95499236-C9FE-56A6-9D7D-E943A24B633A	*EXPLOIT*
|     	2C119FFA-ECE0-5E14-A4A4-354A2C38071A	10.0	https://vulners.com/githubexploit/2C119FFA-ECE0-5E14-A4A4-354A2C38071A	*EXPLOIT*
|     	F607361B-6369-5DF5-9B29-E90FA29DC565	9.8	https://vulners.com/githubexploit/F607361B-6369-5DF5-9B29-E90FA29DC565	*EXPLOIT*
|     	EDB-ID:51193	9.8	https://vulners.com/exploitdb/EDB-ID:51193	*EXPLOIT*
|     	CVE-2024-38476	9.8	https://vulners.com/cve/CVE-2024-38476
|     	CVE-2024-38474	9.8	https://vulners.com/cve/CVE-2024-38474
|     	CVE-2023-25690	9.8	https://vulners.com/cve/CVE-2023-25690
|     	CVE-2022-31813	9.8	https://vulners.com/cve/CVE-2022-31813
|     	CVE-2022-23943	9.8	https://vulners.com/cve/CVE-2022-23943
|     	CVE-2022-22720	9.8	https://vulners.com/cve/CVE-2022-22720
|     	CVE-2021-44790	9.8	https://vulners.com/cve/CVE-2021-44790
|     	CVE-2021-39275	9.8	https://vulners.com/cve/CVE-2021-39275
|     	CVE-2021-26691	9.8	https://vulners.com/cve/CVE-2021-26691
|     	CVE-2020-11984	9.8	https://vulners.com/cve/CVE-2020-11984
|     	B02819DB-1481-56C4-BD09-6B4574297109	9.8	https://vulners.com/githubexploit/B02819DB-1481-56C4-BD09-6B4574297109	*EXPLOIT*
|     	A5425A79-9D81-513A-9CC5-549D6321897C	9.8	https://vulners.com/githubexploit/A5425A79-9D81-513A-9CC5-549D6321897C	*EXPLOIT*
|     	5C1BB960-90C1-5EBF-9BEF-F58BFFDFEED9	9.8	https://vulners.com/githubexploit/5C1BB960-90C1-5EBF-9BEF-F58BFFDFEED9	*EXPLOIT*
|     	3F17CA20-788F-5C45-88B3-E12DB2979B7B	9.8	https://vulners.com/githubexploit/3F17CA20-788F-5C45-88B3-E12DB2979B7B	*EXPLOIT*
|     	1337DAY-ID-39214	9.8	https://vulners.com/zdt/1337DAY-ID-39214	*EXPLOIT*
|     	1337DAY-ID-34882	9.8	https://vulners.com/zdt/1337DAY-ID-34882	*EXPLOIT*
|     	CVE-2024-38475	9.1	https://vulners.com/cve/CVE-2024-38475
|     	CVE-2022-28615	9.1	https://vulners.com/cve/CVE-2022-28615
|     	CVE-2022-22721	9.1	https://vulners.com/cve/CVE-2022-22721
|     	CVE-2019-10082	9.1	https://vulners.com/cve/CVE-2019-10082
|     	2EF14600-503F-53AF-BA24-683481265D30	9.1	https://vulners.com/githubexploit/2EF14600-503F-53AF-BA24-683481265D30	*EXPLOIT*
|     	0486EBEE-F207-570A-9AD8-33269E72220A	9.1	https://vulners.com/githubexploit/0486EBEE-F207-570A-9AD8-33269E72220A	*EXPLOIT*
|     	DC06B9EF-3584-5D80-9EEB-E7B637DCF3D6	9.0	https://vulners.com/githubexploit/DC06B9EF-3584-5D80-9EEB-E7B637DCF3D6	*EXPLOIT*
|     	CVE-2022-36760	9.0	https://vulners.com/cve/CVE-2022-36760
|     	CVE-2021-40438	9.0	https://vulners.com/cve/CVE-2021-40438
|     	AE3EF1CC-A0C3-5CB7-A6EF-4DAAAFA59C8C	9.0	https://vulners.com/githubexploit/AE3EF1CC-A0C3-5CB7-A6EF-4DAAAFA59C8C	*EXPLOIT*
|     	8AFB43C5-ABD4-52AD-BB19-24D7884FF2A2	9.0	https://vulners.com/githubexploit/8AFB43C5-ABD4-52AD-BB19-24D7884FF2A2	*EXPLOIT*
|     	893DFD44-40B5-5469-AC54-A373AEE17F19	9.0	https://vulners.com/githubexploit/893DFD44-40B5-5469-AC54-A373AEE17F19	*EXPLOIT*
|     	7F48C6CF-47B2-5AF9-B6FD-1735FB2A95B2	9.0	https://vulners.com/githubexploit/7F48C6CF-47B2-5AF9-B6FD-1735FB2A95B2	*EXPLOIT*
|     	4810E2D9-AC5F-5B08-BFB3-DDAFA2F63332	9.0	https://vulners.com/githubexploit/4810E2D9-AC5F-5B08-BFB3-DDAFA2F63332	*EXPLOIT*
|     	4373C92A-2755-5538-9C91-0469C995AA9B	9.0	https://vulners.com/githubexploit/4373C92A-2755-5538-9C91-0469C995AA9B	*EXPLOIT*
|     	36618CA8-9316-59CA-B748-82F15F407C4F	9.0	https://vulners.com/githubexploit/36618CA8-9316-59CA-B748-82F15F407C4F	*EXPLOIT*
|     	CVE-2021-44224	8.2	https://vulners.com/cve/CVE-2021-44224
|     	B0A9E5E8-7CCC-5984-9922-A89F11D6BF38	8.2	https://vulners.com/githubexploit/B0A9E5E8-7CCC-5984-9922-A89F11D6BF38	*EXPLOIT*
|     	EDB-ID:46676	7.8	https://vulners.com/exploitdb/EDB-ID:46676	*EXPLOIT*
|     	CVE-2019-0211	7.8	https://vulners.com/cve/CVE-2019-0211
|     	PACKETSTORM:176334	7.5	https://vulners.com/packetstorm/PACKETSTORM:176334	*EXPLOIT*
|     	PACKETSTORM:171631	7.5	https://vulners.com/packetstorm/PACKETSTORM:171631	*EXPLOIT*
|     	F7F6E599-CEF4-5E03-8E10-FE18C4101E38	7.5	https://vulners.com/githubexploit/F7F6E599-CEF4-5E03-8E10-FE18C4101E38	*EXPLOIT*
|     	E606D7F4-5FA2-5907-B30E-367D6FFECD89	7.5	https://vulners.com/githubexploit/E606D7F4-5FA2-5907-B30E-367D6FFECD89	*EXPLOIT*
|     	E5C174E5-D6E8-56E0-8403-D287DE52EB3F	7.5	https://vulners.com/githubexploit/E5C174E5-D6E8-56E0-8403-D287DE52EB3F	*EXPLOIT*
|     	DB6E1BBD-08B1-574D-A351-7D6BB9898A4A	7.5	https://vulners.com/githubexploit/DB6E1BBD-08B1-574D-A351-7D6BB9898A4A	*EXPLOIT*
|     	CVE-2024-40898	7.5	https://vulners.com/cve/CVE-2024-40898
|     	CVE-2024-39573	7.5	https://vulners.com/cve/CVE-2024-39573
|     	CVE-2024-38477	7.5	https://vulners.com/cve/CVE-2024-38477
|     	CVE-2024-27316	7.5	https://vulners.com/cve/CVE-2024-27316
|     	CVE-2023-31122	7.5	https://vulners.com/cve/CVE-2023-31122
|     	CVE-2023-27522	7.5	https://vulners.com/cve/CVE-2023-27522
|     	CVE-2022-30556	7.5	https://vulners.com/cve/CVE-2022-30556
|     	CVE-2022-29404	7.5	https://vulners.com/cve/CVE-2022-29404
|     	CVE-2022-26377	7.5	https://vulners.com/cve/CVE-2022-26377
|     	CVE-2022-22719	7.5	https://vulners.com/cve/CVE-2022-22719
|     	CVE-2021-36160	7.5	https://vulners.com/cve/CVE-2021-36160
|     	CVE-2021-34798	7.5	https://vulners.com/cve/CVE-2021-34798
|     	CVE-2021-33193	7.5	https://vulners.com/cve/CVE-2021-33193
|     	CVE-2021-26690	7.5	https://vulners.com/cve/CVE-2021-26690
|     	CVE-2020-9490	7.5	https://vulners.com/cve/CVE-2020-9490
|     	CVE-2020-11993	7.5	https://vulners.com/cve/CVE-2020-11993
|     	CVE-2019-9517	7.5	https://vulners.com/cve/CVE-2019-9517
|     	CVE-2019-10081	7.5	https://vulners.com/cve/CVE-2019-10081
|     	CVE-2019-0217	7.5	https://vulners.com/cve/CVE-2019-0217
|     	CVE-2019-0215	7.5	https://vulners.com/cve/CVE-2019-0215
|     	CVE-2019-0190	7.5	https://vulners.com/cve/CVE-2019-0190
|     	CVE-2018-17199	7.5	https://vulners.com/cve/CVE-2018-17199
|     	CVE-2006-20001	7.5	https://vulners.com/cve/CVE-2006-20001
|     	C9A1C0C1-B6E3-5955-A4F1-DEA0E505B14B	7.5	https://vulners.com/githubexploit/C9A1C0C1-B6E3-5955-A4F1-DEA0E505B14B	*EXPLOIT*
|     	BD3652A9-D066-57BA-9943-4E34970463B9	7.5	https://vulners.com/githubexploit/BD3652A9-D066-57BA-9943-4E34970463B9	*EXPLOIT*
|     	B5E74010-A082-5ECE-AB37-623A5B33FE7D	7.5	https://vulners.com/githubexploit/B5E74010-A082-5ECE-AB37-623A5B33FE7D	*EXPLOIT*
|     	B0208442-6E17-5772-B12D-B5BE30FA5540	7.5	https://vulners.com/githubexploit/B0208442-6E17-5772-B12D-B5BE30FA5540	*EXPLOIT*
|     	A820A056-9F91-5059-B0BC-8D92C7A31A52	7.5	https://vulners.com/githubexploit/A820A056-9F91-5059-B0BC-8D92C7A31A52	*EXPLOIT*
|     	A66531EB-3C47-5C56-B8A6-E04B54E9D656	7.5	https://vulners.com/githubexploit/A66531EB-3C47-5C56-B8A6-E04B54E9D656	*EXPLOIT*
|     	A0F268C8-7319-5637-82F7-8DAF72D14629	7.5	https://vulners.com/githubexploit/A0F268C8-7319-5637-82F7-8DAF72D14629	*EXPLOIT*
|     	9814661A-35A4-5DB7-BB25-A1040F365C81	7.5	https://vulners.com/githubexploit/9814661A-35A4-5DB7-BB25-A1040F365C81	*EXPLOIT*
|     	788E0E7C-6F5C-5DAD-9E3A-EE6D8A685F7D	7.5	https://vulners.com/githubexploit/788E0E7C-6F5C-5DAD-9E3A-EE6D8A685F7D	*EXPLOIT*
|     	5A864BCC-B490-5532-83AB-2E4109BB3C31	7.5	https://vulners.com/githubexploit/5A864BCC-B490-5532-83AB-2E4109BB3C31	*EXPLOIT*
|     	4B14D194-BDE3-5D7F-A262-A701F90DE667	7.5	https://vulners.com/githubexploit/4B14D194-BDE3-5D7F-A262-A701F90DE667	*EXPLOIT*
|     	45D138AD-BEC6-552A-91EA-8816914CA7F4	7.5	https://vulners.com/githubexploit/45D138AD-BEC6-552A-91EA-8816914CA7F4	*EXPLOIT*
|     	17C6AD2A-8469-56C8-BBBE-1764D0DF1680	7.5	https://vulners.com/githubexploit/17C6AD2A-8469-56C8-BBBE-1764D0DF1680	*EXPLOIT*
|     	1337DAY-ID-38427	7.5	https://vulners.com/zdt/1337DAY-ID-38427	*EXPLOIT*
|     	1337DAY-ID-35422	7.5	https://vulners.com/zdt/1337DAY-ID-35422	*EXPLOIT*
|     	CVE-2023-38709	7.3	https://vulners.com/cve/CVE-2023-38709
|     	CVE-2020-35452	7.3	https://vulners.com/cve/CVE-2020-35452
|     	EXPLOITPACK:44C5118F831D55FAF4259C41D8BDA0AB	7.2	https://vulners.com/exploitpack/EXPLOITPACK:44C5118F831D55FAF4259C41D8BDA0AB	*EXPLOIT*
|     	CVE-2019-10097	7.2	https://vulners.com/cve/CVE-2019-10097
|     	1337DAY-ID-32502	7.2	https://vulners.com/zdt/1337DAY-ID-32502	*EXPLOIT*
|     	FDF3DFA1-ED74-5EE2-BF5C-BA752CA34AE8	6.8	https://vulners.com/githubexploit/FDF3DFA1-ED74-5EE2-BF5C-BA752CA34AE8	*EXPLOIT*
|     	0095E929-7573-5E4A-A7FA-F6598A35E8DE	6.8	https://vulners.com/githubexploit/0095E929-7573-5E4A-A7FA-F6598A35E8DE	*EXPLOIT*
|     	CVE-2020-1927	6.1	https://vulners.com/cve/CVE-2020-1927
|     	CVE-2019-10098	6.1	https://vulners.com/cve/CVE-2019-10098
|     	CVE-2019-10092	6.1	https://vulners.com/cve/CVE-2019-10092
|     	CVE-2023-45802	5.9	https://vulners.com/cve/CVE-2023-45802
|     	1337DAY-ID-33577	5.8	https://vulners.com/zdt/1337DAY-ID-33577	*EXPLOIT*
|     	CVE-2020-13938	5.5	https://vulners.com/cve/CVE-2020-13938
|     	CVE-2022-37436	5.3	https://vulners.com/cve/CVE-2022-37436
|     	CVE-2022-28614	5.3	https://vulners.com/cve/CVE-2022-28614
|     	CVE-2022-28330	5.3	https://vulners.com/cve/CVE-2022-28330
|     	CVE-2020-1934	5.3	https://vulners.com/cve/CVE-2020-1934
|     	CVE-2019-17567	5.3	https://vulners.com/cve/CVE-2019-17567
|     	CVE-2019-0220	5.3	https://vulners.com/cve/CVE-2019-0220
|     	CVE-2019-0196	5.3	https://vulners.com/cve/CVE-2019-0196
|     	CVE-2018-17189	5.3	https://vulners.com/cve/CVE-2018-17189
|     	4013EC74-B3C1-5D95-938A-54197A58586D	4.3	https://vulners.com/githubexploit/4013EC74-B3C1-5D95-938A-54197A58586D	*EXPLOIT*
|     	1337DAY-ID-33575	4.3	https://vulners.com/zdt/1337DAY-ID-33575	*EXPLOIT*
|     	CVE-2019-0197	4.2	https://vulners.com/cve/CVE-2019-0197
|_    	PACKETSTORM:152441	0.0	https://vulners.com/packetstorm/PACKETSTORM:152441	*EXPLOIT*
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-server-header: Apache/2.4.37 (centos)
|_http-csrf: Couldn't find any CSRF vulnerabilities.
|_http-trace: TRACE is enabled
| http-enum: 
|_  /icons/: Potentially interesting folder w/ directory listing
MAC Address: 08:00:27:A9:51:8E (Oracle VirtualBox virtual NIC)
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: general purpose
Running: Linux 3.X|4.X
OS CPE: cpe:/o:linux:linux_kernel:3 cpe:/o:linux:linux_kernel:4
OS details: Linux 3.2 - 4.9
Uptime guess: 29.392 days (since Wed Jan  8 10:34:53 2025)
Network Distance: 1 hop
TCP Sequence Prediction: Difficulty=256 (Good luck!)
IP ID Sequence Generation: All zeros

TRACEROUTE
HOP RTT     ADDRESS
1   3.57 ms 192.168.56.74

NSE: Script Post-scanning.
Initiating NSE at 19:59
Completed NSE at 19:59, 0.00s elapsed
Initiating NSE at 19:59
Completed NSE at 19:59, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 39.60 seconds
           Raw packets sent: 25 (1.894KB) | Rcvd: 17 (1.366KB
```





