#!/bin/bash

sudo bash create-client-structure.sh

sudo bash create-server-structure.sh

make server

make getcert

make recvmsg

make sendmsg

make changepw

sudo addgroup server

sudo useradd -g server -m server -p security

mv server Server/bin
mv users.txt Server/bin
cd Server/bin
openssl ecparam -genkey -name prime256v1 -noout -out server-private-key.pem
sudo chown server: server-private-key.pem
sudo chmod g+rw server-private-key.pem
openssl ec -in server-private-key.pem -pubout -out server-public-key.pem
sudo chown server: server-public-key.pem
sudo chmod g+rw server-public-key.pem
openssl req -new -x509 -sha256 -key server-private-key.pem -subj "/CN=duckduckgo.com" -out server-certificate.pem
sudo chown server: server-certificate.pem
sudo chmod g+rw,o+rw server-certificate.pem
cp -r server-certificate.pem ../../Client/bin
sudo chown server: server
sudo chmod g+s server
cd ../..
mv getcert Client/bin
mv changepw Client/bin
mv sendmsg Client/bin
mv recvmsg Client/bin
