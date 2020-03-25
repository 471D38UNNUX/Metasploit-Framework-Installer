#!/bin/bash

Launcher=$PREFIX/bin
Retry=$(df | grep /storage/emulated | awk '{print $ 5}' | cut -d '%' -f1)

Network() {
	 clear
	 dialog --backtitle 'Metasploit Framework Installer' --title 'Installation was incompleted' --msgbox '
	 Connection was disconnected.
	 Your system has not been modified.
	 To install this tool at a later
     time, please run this installer
     again.' 20 40 && exit
}

MSF() {
     # This command for install Metasploit-Framework.
     apt update &> /dev/null | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Upgrading System.' 20 40 0
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Upgrading System.' 20 40 5
     apt full-upgrade -y &> /dev/null | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Upgrading System.' 20 40 11 
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Upgrading System.' 20 40 16
     pkg install unstable-repo -y &> /dev/null | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Adding Repository.' 20 40 21
     if [ ! -f $PREFIX/etc/apt/sources.list.d/unstable.list ]; then
       Network
     fi
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Adding Repository.' 20 40 26
     apt-get install metasploit postgresql -y &> /dev/null | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Downloading. 20 40 32
     if [[ ! -f $Launcher/gem ]]; then
       Network
     fi
     Gempath=$(gem env | grep $PREFIX/lib | head -1 | awk '{print $4}')
     Gemfile=$Gempath/specifications
     if ls $Gempath/gems | grep rubygems-update* &> /dev/null && ls $Gempath/gems | grep bundler* &> /dev/null && ls $Gemfile/rake* &> /dev/null && ls $Gemfile/Ascii85* &> /dev/null && ls $Gemfile/concurrent-ruby* &> /dev/null && ls $Gemfile/i18n* &> /dev/null && ls $Gemfile/minitest* &> /dev/null && ls $Gemfile/thread_safe* &> /dev/null && ls $Gemfile/tzinfo* &> /dev/null && ls $Gemfile/activesupport* &> /dev/null && ls $Gemfile/builder* &> /dev/null && ls $Gemfile/erubis* &> /dev/null && ls $Gemfile/mini_portile2* &> /dev/null && ls $Gemfile/nokogiri* &> /dev/null && ls $Gemfile/rails-deprecated_sanitizer* &> /dev/null && ls $Gemfile/rails-dom-testing* &> /dev/null && ls $Gemfile/crass* &> /dev/null && ls $Gemfile/loofah* &> /dev/null && ls $Gemfile/rails-html-sanitizer* &> /dev/null && ls $Gemfile/actionview* &> /dev/null && ls $Gemfile/rack* &> /dev/null && ls $Gemfile/rack-test* &> /dev/null && ls $Gemfile/actionpack* &> /dev/null && ls $Gemfile/activemodel* &> /dev/null && ls $Gemfile/arel* &> /dev/null && ls $Gemfile/activerecord* &> /dev/null && ls $Gemfile/public_suffix* &> /dev/null && ls $Gemfile/addressable* &> /dev/null && ls $Gemfile/afm* &> /dev/null && ls $Gemfile/arel-helpers* &> /dev/null && ls $Gemfile/ast* &> /dev/null && ls $Gemfile/aws-eventstream* &> /dev/null && ls $Gemfile/aws-partitions* &> /dev/null && ls $Gemfile/aws-sigv4* &> /dev/null && ls $Gemfile/jmespath* &> /dev/null && ls $Gemfile/aws-sdk-core* &> /dev/null && ls $Gemfile/aws-sdk-ec2* &> /dev/null && ls $Gemfile/aws-sdk-iam* &> /dev/null && ls $Gemfile/aws-sdk-kms* &> /dev/null && ls $Gemfile/aws-sdk-s3* &> /dev/null && ls $Gemfile/bcrypt* &> /dev/null && ls $Gemfile/bcrypt_pbkdf* &> /dev/null && ls $Gemfile/bindata* &> /dev/null && ls $Gemfile/bit-struct* &> /dev/null && ls $Gemfile/bundler* &> /dev/null && ls $Gemfile/byebug* &> /dev/null && ls $Gemfile/coderay* &> /dev/null && ls $Gemfile/cookiejar* &> /dev/null && ls $Gemfile/daemons* &> /dev/null && ls $Gemfile/diff-lcs* &> /dev/null && ls $Gemfile/dnsruby* &> /dev/null && ls $Gemfile/docile* &> /dev/null && ls $Gemfile/ed25519* &> /dev/null && ls $Gemfile/eventmachine* &> /dev/null && ls $Gemfile/em-socksify* &> /dev/null && ls $Gemfile/http_parser* &> /dev/null && ls $Gemfile/em-http-request* &> /dev/null && ls $Gemfile/factory_bot* &> /dev/null && ls $Gemfile/thor* &> /dev/null && ls $Gemfile/railties* &> /dev/null && ls $Gemfile/factory_bot_rails* &> /dev/null && ls $Gemfile/faker* &> /dev/null && ls $Gemfile/multipart-post* &> /dev/null && ls $Gemfile/faraday* &> /dev/null && ls $Gemfile/websocket-extensions* &> /dev/null && ls $Gemfile/websocket-driver* &> /dev/null && ls $Gemfile/faye-websocket* &> /dev/null && ls $Gemfile/filesize* &> /dev/null && ls $Gemfile/fivemat* &> /dev/null && ls $Gemfile/hashery* &> /dev/null && ls $Gemfile/hrr_rb_ssh* &> /dev/null && ls $Gemfile/jaro_winkler* &> /dev/null && ls $Gemfile/rkelly-remix* &> /dev/null && ls $Gemfile/jsobfu* &> /dev/null && ls $Gemfile/default/json* &> /dev/null && ls $Gemfile/metasm* &> /dev/null && ls $Gemfile/metasploit-concern* &> /dev/null && ls $Gemfile/metasploit-model* &> /dev/null && ls $Gemfile/pg* &> /dev/null && ls $Gemfile/pg_array_parser* &> /dev/null && ls $Gemfile/postgres_ext* &> /dev/null && ls $Gemfile/recog* &> /dev/null && ls $Gemfile/metasploit_data_models* &> /dev/null && ls $Gemfile/net-ssh* &> /dev/null && ls $Gemfile/rex-core* &> /dev/null && ls $Gemfile/rex-socket* &> /dev/null && ls $Gemfile/rubyntlm* &> /dev/null && ls $Gemfile/rubyzip* &> /dev/null && ls $Gemfile/metasploit-credential* &> /dev/null && ls $Gemfile/metasploit-payloads* &> /dev/null && ls $Gemfile/metasploit_payloads-mettle* &> /dev/null && ls $Gemfile/mqtt* &> /dev/null && ls $Gemfile/msgpack* &> /dev/null && ls $Gemfile/nessus_rest* &> /dev/null && ls $Gemfile/network_interface* &> /dev/null && ls $Gemfile/nexpose* &> /dev/null && ls $Gemfile/sawyer* &> /dev/null && ls $Gemfile/octokit* &> /dev/null && ls $Gemfile/openssl-ccm* &> /dev/null && ls $Gemfile/openvas-omp* &> /dev/null && ls $Gemfile/pcaprub* &> /dev/null && ls $Gemfile/packetfu* &> /dev/null && ls $Gemfile/patch_finder* &> /dev/null && ls $Gemfile/ruby-rc4* &> /dev/null && ls $Gemfile/ttfunk* &> /dev/null && ls $Gemfile/pdf-reader* &> /dev/null && ls $Gemfile/rb-readline* &> /dev/null && ls $Gemfile/redcarpet* &> /dev/null && ls $Gemfile/rex-text* &> /dev/null && ls $Gemfile/rex-arch* &> /dev/null && ls $Gemfile/rex-struct2* &> /dev/null && ls $Gemfile/rex-bin_tools* &> /dev/null && ls $Gemfile/rex-encoder* &> /dev/null && ls $Gemfile/rex-exploitation* &> /dev/null && ls $Gemfile/rex-java* &> /dev/null && ls $Gemfile/rex-mime* &> /dev/null && ls $Gemfile/rex-nop* &> /dev/null && ls $Gemfile/rex-ole* &> /dev/null && ls $Gemfile/rex-random_identifier* &> /dev/null && ls $Gemfile/rex-powershell* &> /dev/null && ls $Gemfile/rex-registry* &> /dev/null && ls $Gemfile/rex-rop_builder* &> /dev/null && ls $Gemfile/rex-sslscan* &> /dev/null && ls $Gemfile/rex-zip* &> /dev/null && ls $Gemfile/ruby-macho* &> /dev/null && ls $Gemfile/windows_error* &> /dev/null && ls $Gemfile/ruby_smb* &> /dev/null && ls $Gemfile/rack-protection* &> /dev/null && ls $Gemfile/tilt* &> /dev/null && ls $Gemfile/sinatra* &> /dev/null && ls $Gemfile/sqlite3* &> /dev/null && ls $Gemfile/sshkey* &> /dev/null && ls $Gemfile/thin* &> /dev/null && ls $Gemfile/tzinfo-data* &> /dev/null && ls $Gemfile/warden* &> /dev/null && ls $Gemfile/xdr* &> /dev/null && ls $Gemfile/xmlrpc* &> /dev/null && ls $Gemfile/method_source* &> /dev/null && ls $Gemfile/parallel* &> /dev/null && ls $Gemfile/parser* &> /dev/null && ls $Gemfile/pry* &> /dev/null && ls $Gemfile/pry-byebug* &> /dev/null && ls $Gemfile/rainbow* &> /dev/null && ls $Gemfile/rexml* &> /dev/null && ls $Gemfile/rspec-support* &> /dev/null && ls $Gemfile/rspec-core* &> /dev/null && ls $Gemfile/rspec-expectations* &> /dev/null && ls $Gemfile/rspec-mocks* &> /dev/null && ls $Gemfile/rspec* &> /dev/null && ls $Gemfile/rspec-rails* &> /dev/null && ls $Gemfile/rspec-rerun* &> /dev/null && ls $Gemfile/ruby-progressbar* &> /dev/null && ls $Gemfile/unicode-display_width* &> /dev/null && ls $Gemfile/rubocop* &> /dev/null && ls $Gemfile/simplecov-html* &> /dev/null && ls $Gemfile/simplecov* &> /dev/null && ls $Gemfile/swagger-blocks* &> /dev/null && ls $Gemfile/timecop* &> /dev/null && ls $Gemfile/yard* &> /dev/null && [[ -f $Launcher/update_rubygems && -f $Launcher/bundle && -f $Launcher/bundler && -f $PREFIX/opt/metasploit-framework/metasploit-framework.gemspec && -f $Launcher/msfbinscan && -f $Launcher/msfconsole && -f $Launcher/msfd && -f $Launcher/msfelfscan && -f $Launcher/msfmachscan && -f $Launcher/msfpescan && -f $Launcher/msfrop && -f $Launcher/msfrpc && -f $Launcher/msfrpcd && -f $Launcher/msfvenom ]]; then
       sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Downloading. 20 40 37
     else
	 Network
     fi
     # Configure Postgresql Database.
     cat > ~/msfremove << "EOF"
if [ ! -d $PREFIX/opt/metasploit-framework ]; then
  sed -i '/^pg_ctl/d' $PREFIX/etc/bash.bashrc
  sed -i '/msfremove/d' $PREFIX/etc/bash.bashrc
  rm -rf $PREFIX/bin/msf*
fi
EOF
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Configuring. 20 40 42
     chmod +x ~/msfremove | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Configuring. 20 40 47
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Configuring. 20 40 53
     mv ~/msfremove $PREFIX/bin/ | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Configuring. 20 40 58
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Configuring. 20 40 63
     grep -qsxF 'pg_ctl -D $PREFIX/var/lib/postgresql start &> /dev/null' $PREFIX/etc/bash.bashrc || echo 'pg_ctl -D $PREFIX/var/lib/postgresql start &> /dev/null' >> $PREFIX/etc/bash.bashrc
     grep -qsxF msfremove $PREFIX/etc/bash.bashrc || echo msfremove >> $PREFIX/etc/bash.bashrc
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge Configuring. 20 40 68
     # Cleaning Cache.
     apt autoremove -y &> /dev/null | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Cleaning Cache.' 20 40 74
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Cleaning Cache.' 20 40 79
     apt autoclean &> /dev/null | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Cleaning Cache.' 20 40 84
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Cleaning Cache.' 20 40 89
     rm -rf $PREFIX/var/cache/apt/archives/*.deb | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Cleaning Cache. 20 40 95
     sleep 3 | dialog --backtitle 'Metasploit Framework Installer - Step 4' --title Installing --gauge 'Cleaning Cache. 20 40 100
}

Cancel() {
	clear
	dialog --backtitle 'Metasploit Framework Installer' --title 'Installation was incompleted' --msgbox '
	Installation was incompleted.
	Your system has not been modified.
	To install this tool at a later
    time, please run this installer
    again.' 20 40 && exit
}

apt install -f &> /dev/null
dpkg --configure -a &> /dev/null
apt update &> /dev/null
apt install dialog -y &> /dev/null
clear

echo -e '\e[91m            `-::::::::::::::::::::::-`            ' && sleep 1
echo -e '\e[91m           `:/:--------------------://.           ' && sleep 1
echo -e '\e[91m          .//-                      -//.          ' && sleep 1
echo -e '\e[91m         -//.                        .//-         ' && sleep 1
echo -e '\e[91m       `:/:.''\e[39m---.''\e[91m                      .:/:`       ' && sleep 1
echo -e '\e[91m      `:/:` ''\e[39m`+NMMs`''\e[91m             .-`     `:/:`      ' && sleep 1
echo -e '\e[91m     .:/:`    ''\e[39m.hMMm/''\e[91m          .::/.      `://.     ' && sleep 1
echo -e '\e[91m    .//-       ''\e[39m/mMMy.''\e[91m      `-:`-/.        -//.    ' && sleep 1
echo -e '\e[91m   -//.         ''\e[39m.yMMm/`''\e[91m   .::--:/:----.    .//-   ' && sleep 1
echo -e '\e[91m  ://.            ''\e[39m:mMMh.''\e[91m  `````-/-`-/-`     .//:` ' && sleep 1
echo -e '\e[91m  ://.            ''\e[39m/mMMh.''\e[91m       ./--:.       .//:` ' && sleep 1
echo -e '\e[91m   -//.         ''\e[39m.yMMm/''\e[91m         ./:.        .//-   ' && sleep 1
echo -e '\e[91m    .//-       ''\e[39m/mMMy.''\e[91m          ```        -//.    ' && sleep 1
echo -e '\e[91m     .:/:   ''\e[39m`.hMMm:       ............` ''\e[91m`://.     ' && sleep 1
echo -e '\e[91m      `:/:''\e[39m``+NMNs`        yNNNNNNNNNNN+`''\e[91m:/:`      ' && sleep 1
echo -e '\e[91m       `:/:''\e[39m.---.          .------------''\e[91m:/:`       ' && sleep 1
echo -e '\e[91m         -//.                        .//-         ' && sleep 1
echo -e '\e[91m          .//-                      -//.          ' && sleep 1
echo -e '\e[91m           .//:--------------------://.           ' && sleep 1
echo -e '\e[91m            `::::::::::::::::::::::::`            ' && sleep 3

echo -e '\e[91mLoading\e[39m...'
for try in $(seq 1 $Retry); do
echo -en '\r\e[39m[                                         ][|]' && sleep 0.03
echo -en '\r\e[39m[\e[91m>\e[39m                                        ][/]' && sleep 0.03
echo -en '\r\e[39m[\e[91m>\e[93m>\e[39m                                       ][-]' && sleep 0.03
echo -en '\r\e[39m[\e[91m>\e[93m>\e[92m>\e[39m                                      ][\]' && sleep 0.03
echo -en '\r\e[39m[\e[91m>\e[93m>\e[92m>\e[96m>\e[39m                                     ][|]' && sleep 0.03
echo -en '\r\e[39m[ \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                                    ][/]' && sleep 0.03
echo -en '\r\e[39m[  \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                                   ][-]' && sleep 0.03
echo -en '\r\e[39m[   \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                                  ][\]' && sleep 0.03
echo -en '\r\e[39m[    \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                                 ][|]' && sleep 0.03
echo -en '\r\e[39m[     \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                                ][/]' && sleep 0.03
echo -en '\r\e[39m[      \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                               ][-]' && sleep 0.03
echo -en '\r\e[39m[       \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                              ][\]' && sleep 0.03
echo -en '\r\e[39m[        \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                             ][|]' && sleep 0.03
echo -en '\r\e[39m[         \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                            ][/]' && sleep 0.03
echo -en '\r\e[39m[          \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                           ][-]' && sleep 0.03
echo -en '\r\e[39m[           \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                          ][\]' && sleep 0.03
echo -en '\r\e[39m[            \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                         ][|]' && sleep 0.03
echo -en '\r\e[39m[             \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                        ][/]' && sleep 0.03
echo -en '\r\e[39m[              \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                       ][-]' && sleep 0.03
echo -en '\r\e[39m[               \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                      ][\]' && sleep 0.03
echo -en '\r\e[39m[                \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                     ][|]' && sleep 0.03
echo -en '\r\e[39m[                 \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                    ][/]' && sleep 0.03
echo -en '\r\e[39m[                  \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                   ][-]' && sleep 0.03
echo -en '\r\e[39m[                   \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                  ][\]' && sleep 0.03
echo -en '\r\e[39m[                    \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                 ][|]' && sleep 0.03
echo -en '\r\e[39m[                     \e[91m>\e[93m>\e[92m>\e[96m>\e[39m                ][/]' && sleep 0.03
echo -en '\r\e[39m[                      \e[91m>\e[93m>\e[92m>\e[96m>\e[39m               ][-]' && sleep 0.03
echo -en '\r\e[39m[                       \e[91m>\e[93m>\e[92m>\e[96m>\e[39m              ][\]' && sleep 0.03
echo -en '\r\e[39m[                        \e[91m>\e[93m>\e[92m>\e[96m>\e[39m             ][|]' && sleep 0.03
echo -en '\r\e[39m[                         \e[91m>\e[93m>\e[92m>\e[96m>\e[39m            ][/]' && sleep 0.03
echo -en '\r\e[39m[                          \e[91m>\e[93m>\e[92m>\e[96m>\e[39m           ][-]' && sleep 0.03
echo -en '\r\e[39m[                           \e[91m>\e[93m>\e[92m>\e[96m>\e[39m          ][\]' && sleep 0.03
echo -en '\r\e[39m[                            \e[91m>\e[93m>\e[92m>\e[96m>\e[39m         ][|]' && sleep 0.03
echo -en '\r\e[39m[                             \e[91m>\e[93m>\e[92m>\e[96m>\e[39m        ][/]' && sleep 0.03
echo -en '\r\e[39m[                              \e[91m>\e[93m>\e[92m>\e[96m>\e[39m       ][-]' && sleep 0.03
echo -en '\r\e[39m[                               \e[91m>\e[93m>\e[92m>\e[96m>\e[39m      ][\]' && sleep 0.03
echo -en '\r\e[39m[                                \e[91m>\e[93m>\e[92m>\e[96m>\e[39m     ][|]' && sleep 0.03
echo -en '\r\e[39m[                                 \e[91m>\e[93m>\e[92m>\e[96m>\e[39m    ][/]' && sleep 0.03
echo -en '\r\e[39m[                                  \e[91m>\e[93m>\e[92m>\e[96m>\e[39m   ][-]' && sleep 0.03
echo -en '\r\e[39m[                                   \e[91m>\e[93m>\e[92m>\e[96m>\e[39m  ][\]' && sleep 0.03
echo -en '\r\e[39m[                                    \e[91m>\e[93m>\e[92m>\e[96m>\e[39m ][|]' && sleep 0.03
echo -en '\r\e[39m[                                     \e[91m>\e[93m>\e[92m>\e[96m>\e[39m][/]' && sleep 0.03
echo -en '\r\e[39m[                                      \e[91m>\e[93m>\e[92m>\e[39m][/]' && sleep 0.03
echo -en '\r\e[39m[                                       \e[91m>\e[93m>\e[39m][-]' && sleep 0.03
echo -en '\r\e[39m[                                        \e[91m>\e[39m][\]' && sleep 0.03
echo -en '\r\e[39m[                                         ][|]' && sleep 0.03
done
clear

dialog --backtitle 'Metasploit Framework Installer - Step 1' --title 'License Agreement' --msgbox '
Copyright (C) 2006-2015, Rapid7, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code
  must retain the above
  copyright notice this list of
  conditions and the following
  disclaimer.

* Redistributions in binary form
  must reproduce the above
  copyright notice, this list of
  conditions and the following
  disclaimer in the
  documentation and/or other
  materials provided with the
  distribution.

* Neither the name of Rapid7,
  Inc. nor the names of its 
  contributors may be used to
  endorse or promote
  products derived from this
  software without specific
  prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

===========================

The Metasploit Framework is provided under the 3-clause BSD license above.
The copyright on this package is held by Rapid7, Inc.

This license does not apply to several components within the Metasploit Framework source tree.  For more details see the LICENSE file at https://github.com/rapid7/metasploit-framework/blob/master/LICENSE' 20 40
clear

dialog --backtitle 'Metasploit Framework Installer - Step 2' --title 'Checking Storage' --infobox 'Checking storage space availability.' 20 40
clear
if [[ $(df | grep /storage/emulated | awk '{ print $4 }') -ge 2101528 ]]; then
  dialog --backtitle 'Metasploit Framework Installer - Step 3' --title 'Ready to install' --yesno '
  This feature requires at least 1GB
  on your storage.
  If you select no, this installation
  will be canceled.
  Continue installation?' 20 40
  # 0 means user hit [yes] button.
  # 1 means user hit [no] button.
  # 255 means user hit [Esc] key.
  response=$?
  case $response in
        0) MSF;;
        1) Cancel;;
      255) Cancel;;
  esac
elif [[ $(df | grep /storage/emulated | awk '{ print $4 }') -ge 1050764 && $(df | grep /storage/emulated | awk '{ print $4 }') -lt 2101528 ]]; then
    dialog --backtitle 'Metasploit Framework Installer - Step 3' --title 'Ready to install' --yesno '
    Warning low disk space.
    This feature requires at least 1GB
    on your storage.
    If you select no, this installation
    will be canceled.
    Continue installation?' 20 40
    # 0 means user hit [yes] button.
    # 1 means user hit [no] button.
    # 255 means user hit [Esc] key.
    response=$?
    case $response in
          0) MSF;;
          1) Cancel;;
        255) Cancel;;
    esac
else [[ $(df | grep /storage/emulated | awk '{ print $4 }') -lt 1050764 ]]; 
    dialog --backtitle 'Metasploit Framework Installer' --title 'Installation was incompleted' --msgbox '
    Insufficient storage space.
    Your system has not been modified.
    To install this tool at a later
    time, please run this installer
    again.' 20 40 && exit
fi

Launch() {
clear && sleep 1

echo -e '\e[39m`NMddNm/   :NMM`   hMmdmm+ /Mh dMmmmh:''\e[38;5;202m`+o+/////-' && sleep 1
echo -e '\e[39m oMh::sMy  oMssMs  -MN::oMh mM--Mm  `NM''\e[38;5;202m..o:.` .oo-' && sleep 1
echo -e '\e[39m`NMsdMh: `hMmsyMN` yMysoo: /Md hM+ `+Md''\e[38;5;202m :oo/ `+oo-' && sleep 1
echo -e '\e[39m/ms `hm-`hd:---sm/`md`     ym:.mmdddy/''\e[38;5;202m`-++/` /+/.' && sleep 1

msfconsole
}
clear

dialog --backtitle 'Metasploit Framework Installer - Step 5' --title 'Final Step' --yesno '
Installation was completed.
Launch Metasploit Framework now?' 20 40 
# 0 means user hit [yes] button.
# 1 means user hit [no] button.
# 255 means user hit [Esc] key.
response=$?
case $response in
      0) Launch;;
      1) exit;;
    255) exit;;
esac
