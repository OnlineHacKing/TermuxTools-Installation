#!/data/data/com.termux/files/usr/bin/bash
clear
echo -e "\e[32m


     ██████╗ ███╗   ██╗██╗     ██╗███╗   ██╗███████╗      
    ██╔═══██╗████╗  ██║██║     ██║████╗  ██║██╔════╝      
    ██║   ██║██╔██╗ ██║██║     ██║██╔██╗ ██║█████╗        
    ██║   ██║██║╚██╗██║██║     ██║██║╚██╗██║██╔══╝        
    ╚██████╔╝██║ ╚████║███████╗██║██║ ╚████║███████╗      
     ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝      \e[0m     
  \e[33m                                                     
  ██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
  ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝ 
  ███████║███████║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗
  ██╔══██║██╔══██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║
  ██║  ██║██║  ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝
  ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ \e[0m \e[91mV2.2 \e[0m
                                                      
                                                                                          
\e[95m  +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ \e[0m  
  |M|e|t|a|s|p|l|o|i|t| |i|n| |T|e|r|m|u|x|
\e[36m  +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ \e[0m  
 \e[91m        +-+-+-+-+-+-+ +-+-+-+-+-+-+-+ \e[0m 
         |O|n|l|i|n|e| |H|a|c|k|i|n|g|
   \e[34m      +-+-+-+-+-+-+ +-+-+-+-+-+-+-+  \e[0m
               \e[92m             +-+-+-+-+-+   \e[0m 
                            |S|U|M|A|N|
\e[93m	                    +-+-+-+-+-+ \e[0m


\e[91m Website\e[0m   -  \e[96m www.termux.xyz \e[0m
\e[32m Telegram\e[0m  -  \e[95m https://t.me/OnlineHacking \e[0m
\e[33m YouTube\e[0m   -  \e[94m https://youtube.com/@OnlineHacking \e[0m



"

center() {
  termwidth=$(stty size | cut -d" " -f2)
  padding="$(printf '%0.1s' ={1..500})"
  printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}

# Loading spinner
center " Loading..."
source <(echo "c3Bpbm5lcj0oICd8JyAnLycgJy0nICdcJyApOwoKY291bnQoKXsKICBzcGluICYKICBwaWQ9JCEKICBmb3IgaSBpbiBgc2VxIDEgMTBgCiAgZG8KICAgIHNsZWVwIDE7CiAgZG9uZQoKICBraWxsICRwaWQgIAp9CgpzcGluKCl7CiAgd2hpbGUgWyAxIF0KICBkbyAKICAgIGZvciBpIGluICR7c3Bpbm5lcltAXX07IAogICAgZG8gCiAgICAgIGVjaG8gLW5lICJcciRpIjsKICAgICAgc2xlZXAgMC4yOwogICAgZG9uZTsKICBkb25lCn0KCmNvdW50" | base64 -d)

echo -e "\e[93m================ \e[91m*** \e[96mDependencies installation \e[91m*** \e[93m================\e[97m"
sleep 3

## Remove not working repositories
rm $PREFIX/etc/apt/sources.list.d/*

## Install gnupg required to sign repository
# pkg install -y gnupg

## Sign gushmazuko repository
# curl -fsSL https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/gushmazuko-gpg.pubkey | gpg --dearmor | tee $PREFIX/etc/apt/trusted.gpg.d/gushmazuko-repo.gpg

## Add gushmazuko repository to install ruby 2.7.2 version
# echo 'deb https://github.com/gushmazuko/metasploit_in_termux/raw/master gushmazuko main'  | tee $PREFIX/etc/apt/sources.list.d/gushmazuko.list

## Set low priority for all gushmazuko repository (for security purposes)
## Set highest priority for ruby package from gushmazuko repository
# echo '## Set low priority for all gushmazuko repository (for security purposes)
# Package: *
# Pin: release gushmazuko
# Pin-Priority: 100

## Set highest priority for ruby package from gushmazuko repository
# Package: ruby
# Pin: release gushmazuko
# Pin-Priority: 1001' | tee $PREFIX/etc/apt/preferences.d/preferences

# Purge installed ruby
apt purge ruby -y
rm -fr $PREFIX/lib/ruby/gems

pkg upgrade -y -o Dpkg::Options::="--force-confnew"

# needs binutils
pkg install -y binutils python autoconf bison clang coreutils curl findutils apr apr-util postgresql openssl readline libffi libgmp libpcap libsqlite libgrpc libtool libxml2 libxslt ncurses make ncurses-utils ncurses git wget unzip zip tar termux-tools termux-elf-cleaner pkg-config git ruby -o Dpkg::Options::="--force-confnew"

python3 -m pip install --upgrade pip
python3 -m pip install requests


# if any weird warning occurs maybe its becoze of bigdecimal & pg_ext.so . try comment those lines if problem persist

echo -e "\e[95m  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ \e[0m  "
echo -e "\e[93m                       Fix Ruby BigDecimal"
echo -e "\e[96m  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ \e[0m  "
 
sleep 3
source <(curl -sL https://github.com/termux/termux-packages/files/2912002/fix-ruby-bigdecimal.sh.txt)


echo -e "\e[92m  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ \e[0m  "
echo -e "\e[96m                      Erasing Old Metasploit Folder"
echo -e "\e[93m  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ \e[0m  "
 
sleep 3
rm -rf $PREFIX/opt/metasploit-framework


echo
echo -e "\e[91m ====================================================== \e[97m"
echo -e "\e[92m                       Downloading Metasoloit..."
echo -e "\e[93m ====================================================== \e[97m"
sleep 3

cd $PREFIX/opt
git clone https://github.com/rapid7/metasploit-framework.git --depth=1

echo
center "*** "

echo
echo -e "\e[95m ====================================================== \e[97m"
echo -e " \e[93m                         Installation..."
echo -e "\e[96m ====================================================== \e[97m"
sleep 3

cd $PREFIX/opt/metasploit-framework
# sed '/rbnacl/d' -i Gemfile.lock
# sed '/rbnacl/d' -i metasploit-framework.gemspec

#sed -i "277,\$ s/2.8.0/2.2.0/" Gemfile.lock

gem install bundler
declare NOKOGIRI_VERSION=$(cat Gemfile.lock | grep -i nokogiri | sed 's/nokogiri [\(\)]/(/g' | cut -d ' ' -f 5 | grep -oP "(.).[[:digit:]][\w+]?[.].")
#sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock

gem install nokogiri -v $NOKOGIRI_VERSION -- --use-system-libraries

# for aarch64 if nokogiri problem persist do this 

bundle config build.nokogiri "--use-system-libraries --with-xml2-include=$PREFIX/include/libxml2"; bundle install

gem install actionpack
bundle install
bundle update activesupport
bundle update --bundler
bundle install -j$(nproc --all)

#$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
# rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
	rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
	rm $PREFIX/bin/msfvenom
fi
if [ -e $PREFIX/bin/msfrpcd ];then
	rm $PREFIX/bin/msfrpcd
fi
ln -s $PREFIX/opt/metasploit-framework/msfconsole $PREFIX/bin/
ln -s $PREFIX/opt/metasploit-framework/msfvenom $PREFIX/bin/
ln -s $PREFIX/opt/metasploit-framework/msfrpcd $PREFIX/bin/

termux-elf-cleaner $PREFIX/lib/ruby/gems/*/gems/pg-*/lib/pg_ext.so

echo
center "*"
echo -e "\033[32m           Suppressing Warnings\033[0m"
center "*"
sleep 3

# sed -i '355 s/::Exception, //' $PREFIX/bin/msfvenom
# sed -i '481, 483 {s/^/#/}' $PREFIX/bin/msfvenom


# sed -Ei "s/(\^\\\c\s+)/(\^\\\C-\\\s)/" $PREFIX/opt/metasploit-framework/lib/msf/core/exploit/remote/vim_soap.rb

# Warning occurs during payload generation
sed -i '86 {s/^/#/};96 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/concurrent-ruby-1.0.5/lib/concurrent/atomic/ruby_thread_local_var.rb
sed -i '442, 476 {s/^/#/};436, 438 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/logging-2.3.1/lib/logging/diagnostic_context.rb

## openssl issue has been fixed 

#sed -i '13,15 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb

echo
center "*"
echo -e "\033[32m Installation complete. \n \033[0m"
echo -e "\033[32m \n Open Metasploit Framwork Folder by executing: cd metasploit\033[0m"
echo -e "\033[32m \n Launch metasploit by executing: msfconsole\033[0m"
center "*"
