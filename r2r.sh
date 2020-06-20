echo -e "\e[1;42m Ready-2-Recon \e[0m"
sudo apt-get -y update
sudo apt-get -y upgrade
echo -e "\e[1;42m Updated and Upgraded \e[0m"
sudo apt install -y git
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y perl
sudo apt install -y ruby
sudo apt install -y python-pip
sudo apt install -y python3-pip
sudo apt install -y ruby-bundler
sudo apt-get install -y g++ git qtbase5-dev
sudo apt install -y golang-go
sudo apt install -y openjdk-11-jre-headless
sudo apt install -y openjdk-11-jdk-headless
sudo apt install -y gnupg2
sudo apt install -y p7zip-full
sudo apt install -y gpgv2 autoconf bison build-essential curl git-core libapr1 libaprutil1 libcurl4-openssl-dev libgmp3-dev libgmp-dev libpcap-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libsvn1 libtool libxml2 libxml2-dev libxslt-dev libxslt1-dev libyaml-dev ruby-dev locate ncurses-dev openssl postgresql postgresql-contrib wget xsel zlib1g zlib1g-dev
echo -e "\e[1;42m Depencies Installed \e[0m"
sleep 2
echo -e "\e[1;42m Proceeding To Install Tools :) \e[0m"
sleep 2
sudo apt install -y nmap
echo -e "\e[1;42m Installed Nmap \e[0m"
sudo apt install -y zennmap
echo -e "\e[1;42m Installed Zenmap \e[0m"
sudo apt-get install -y unicornscan
echo -e "\e[1;42m Installed Unicornscan \e[0m"
sudo apt-get install -y fierce
echo -e "\e[1;42m Installed Fierce \e[0m"
sudo apt-get install -y openvas
echo -e "\e[1;42m Installed openVAS \e[0m"
sudo apt-get install nikto
echo -e "\e[1;42m Installed Nikto \e[0m"
sudo apt-get install wpscan
echo -e "\e[1;42m Installed WPScan \e[0m"
git clone https://github.com/Dionach/CMSmap.git
echo -e "\e[1;42m Installed CMSmap \e[0m"
sudo apt-get install -y dnsmap
echo -e "\e[1;42m Installed DNSmap \e[0m"
git clone https://github.com/lanmaster53/recon-ng.git
cd recon-ng
pip install -r REQUIREMENTS
echo -e "\e[1;42m Installed Recon-ng \e[0m"
echo -e "Installing EyeWitness"
git clone https://github.com/FortyNorthSecurity/EyeWitness.git $HOME/tools/eyewitness
d $HOME/tools/eyewitness/setup && sudo ./setup.sh
echo -e "\n\nRun this tool from ${HOME}/tools/eyewitness - [./EyeWitness.py -h] \n"
echo -e "Finished installing EyeWitness\n"
echo -e "Installing MassDNS"
git clone https://github.com/blechschmidt/massdns.git $HOME/tools/massdns
cd $HOME/tools/massdns && sudo make && sudo cp $HOME/tools/massdns/bin/massdns /usr/local/bin
echo -e "Finished installing MassDNS \n"
echo -e "Installing getJS "
go get github.com/003random/getJS
sudo cp $HOME/go/bin/getJS /usr/local/bin
echo -e "Finished installing getJS\n"
echo -e "Installing gitGraber "
git clone https://github.com/hisxo/gitGraber.git $HOME/tools/gitGraber
cd $HOME/tools/gitGraber && pip3 install -r requirements.txt
echo -e "\n\n$Run this tool from ${HOME}/tools/gitGraber\n"
echo -e "Finished installing gitGraber \n"
echo -e "Installing Meg "
go get github.com/tomnomnom/meg
sudo cp $HOME/go/bin/meg /usr/local/bin
echo -e "Finished installing Meg \n"
echo -e "Installing Waybackurls "
go get github.com/tomnomnom/waybackurls
sudo cp $HOME/go/bin/waybackurls /usr/local/bin
echo -e "Finished installing Waybackurls \n"
echo -e "Installing Amass "
go get -u github.com/OWASP/Amass/...
sudo cp $HOME/go/bin/amass /usr/local/bin
echo -e "Finished installing Amass ${SET}\n"
echo -e "Installing Subjack ${SET}"
go get github.com/haccer/subjack
sudo cp $HOME/go/bin/subjack /usr/local/bin
echo -e "Finished installing Subjack\n"
echo -e "Installing WhatWeb "
git clone https://github.com/urbanadventurer/WhatWeb.git $HOME/tools/whatweb
cd $HOME/tools/whatweb && sudo gem install bundler && bundle install
add_to_path whatweb    
echo -e "Finished installing WhatWeb\n"
echo -e "Installing sublist3r "
git clone https://github.com/aboul3la/Sublist3r.git $HOME/tools/sublist3r
pip3 install --no-cache-dir --install-option="--prefix=/install" -r $HOME/tools/sublist3r/requirements.txt
add_to_path sublist3r
ln -sf $HOME/tools/sublist3r/sublist3r.py $HOME/tools/sublist3r/sublist3r && chmod +x $HOME/tools/sublist3r/sublist3r
echo -e "Finished installing sublist3r \n"
echo -e "Installing masscan"
git clone https://github.com/robertdavidgraham/masscan $HOME/tools/masscan
cd $HOME/tools/masscan && make -j && sudo cp $HOME/tools/masscan/bin/masscan /usr/local/bin
sudo rm -r $HOME/tools/masscan
echo -e "Finished installing masscan \n"
echo -e "Installing httprobe "
go get -u github.com/tomnomnom/httprobe
sudo cp $HOME/go/bin/httprobe /usr/local/bin
echo -e "Finished installing httprobe \n"
echo -e "Installing aquatone "
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip -O $HOME/tools/aquatone.zip
cd $HOME/tools && unzip aquatone.zip -d $HOME/tools/aquatone && sudo cp $HOME/tools/aquatone/aquatone /usr/local/bin
sudo rm -r $HOME/tools/aquatone && rm $HOME/tools/aquatone.zip
echo -e "Finished installing aquatone \n"
echo -e "Installing aquatone "
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip -O $HOME/tools/aquatone.zip
cd $HOME/tools && unzip aquatone.zip -d $HOME/tools/aquatone && sudo cp $HOME/tools/aquatone/aquatone /usr/local/bin
sudo rm -r $HOME/tools/aquatone && rm $HOME/tools/aquatone.zip
echo -e "Finished installing aquatone \n"
echo -e "Installing dirsearch "
git clone https://github.com/maurosoria/dirsearch.git $HOME/tools/dirsearch
add_to_path dirsearch
ln -sf $HOME/tools/dirsearch/dirsearch.py $HOME/tools/dirsearch/dirsearch && chmod +x $HOME/tools/dirsearch/dirsearch
echo -e "Finished installing dirsearch \n"
echo -e "Installing findomain "
git clone https://github.com/Edu4rdSHL/findomain.git $HOME/tools/findomain
cd $HOME/tools/findomain && cargo build --release && sudo cp $HOME/tools/findomain/target/release/findomain /usr/local/bin
sudo rm -r $HOME/tools/findomain
echo -e "Finished installing findomain \n"
echo -e "Installing Fast web fuzzer (ffuf) "
go get -u github.com/ffuf/ffuf
sudo cp $HOME/go/bin/ffuf /usr/local/bin
echo -e "Finished installing Fast web fuzzer\n"
echo "you are Ready-to-Recon"
