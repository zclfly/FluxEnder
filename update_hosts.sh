#!/bin/bash


#wget https://zeustracker.abuse.ch/blocklist.php?download=baddomains -O tmp.txt
#cat  tmp.txt | grep -v '#' | grep -v localhost | grep -v "^$" > hosts_badzeus.txt
#rm tmp.txt

#wget https://spyeyetracker.abuse.ch/blocklist.php?download=domainblocklist -O tmp.txt
#cat  tmp.txt | grep -v '#' | grep -v localhost | grep -v "^$" > hosts_spyeye.txt
#rm tmp.txt

#wget https://palevotracker.abuse.ch/blocklists.php?download=domainblocklist -O tmp.txt
#cat  tmp.txt | grep -v '#' | grep -v localhost | grep -v "^$" > hosts_palevo.txt
#rm tmp.txt

wget https://feodotracker.abuse.ch/blocklist/?download=domainblocklist -O tmp.txt
cat  tmp.txt | grep -v '#' | grep -v localhost | grep -v "^$" > hosts_feodo.txt
rm tmp.txt

#wget http://cybercrime-tracker.net/all.php -O tmp.txt
#cat tmp.txt | sed 's/<br\ \/>/\n/g' > hosts_cybercrime.txt
#rm tmp.txt



#wget http://hphosts.gt500.org/hosts.txt -O tmp.txt
#cat tmp.txt | grep 127.0.0.1 | grep -v localhost | awk '{print $2}' > hosts_hphosts.txt
#rm tmp.txt

#wget http://data.phishtank.com/data/online-valid.csv -O hosts_phishtank.csv

#wget http://www.malwaredomainlist.com/hostslist/hosts.txt -tmp.txt
#cat tmp.txt | grep 127.0.0.1 | grep -v localhost | awk '{print $2}' > hosts_malwaredomainlist.txt
#rm tmp.txt