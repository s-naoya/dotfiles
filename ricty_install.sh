# /bin/sh
# for ubuntu

mkdir ~/.makericty
cd ~/.makericty

sudo apt-get install -y fontforge

git clone https://github.com/google/fonts
cp ~/.makericty/fonts/ofl/inconsolata/Inconsolata-Bold.ttf ~/.fonts
cp ~/.makericty/fonts/ofl/inconsolata/Inconsolata-Regular.ttf ~/.fonts
rm -rf ~/.makericty/fonts

wget https://osdn.jp/projects/mix-mplus-ipa/downloads/63545/migu-1m-20150712.zip
unzip migu-1m-20150712.zip
cp ~/.makericty/migu-1m-20150712/migu-1m*.ttf ~/.makericty

wget http://www.rs.tus.ac.jp/yyusa/ricty/ricty_generator.sh
chmod +x ricty_generator.sh
./ricty_generator.sh auto

mkdir ~/.fonts
cp Ricty*.ttf ~/.fonts
cd
rm -rf ~/.makericty

