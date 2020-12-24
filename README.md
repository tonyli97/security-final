# security-final
Final project for Security I

December 23, 2020

Daria Manea, Tony Li, Jacob Jordan


0. DEPENDANCIES 
```
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install icdiff
sudo apt-get install libssl-dev
```

I. SOURCE TREE CONTENTS
```
1. install-unpriv.sh
2. getcert.cpp
3. changepw.cpp
4. sendmsg.cpp
5. recvmsg.cpp
6. server.cpp
7. users.txt
8. Makefile
9. create-server-structure.sh
10. create-client-structure.sh
```


II. HOW TO EXECUTE


IV. ARCHITECTURE
```
>Home Directory
  >Server
    >bin
      >server.cpp
      >users.txt
    >users
      >example user
        >certificate
        >mailbox
    >serverCert
  >Client
    >bin
      >getcert.cpp
      >changepw.cpp
      >sendmsg.cpp
      >recvmsg.cpp
    >users
      >example user
        >certificate
        >mailbox
        >hashedPassword
    >certAuth
```


V. TESTING

Run the following commands in the same folder as server:

```
$ openssl ecparam -genkey -name prime256v1 -noout -out server-private-key.pem

$ openssl ec -in server-private-key.pem -pubout -out server-public-key.pem

$ openssl req -new -x509 -sha256 -key server-private-key.pem -subj "/CN=duckduckgo.com" -out server-certificate.pem
```


To compile server.cpp use the following:
```
$ make 
$ ./server
```
or 

```
$ g++ -o server server.cpp -I /usr/local/ssl/include -L /usr/local/ssl/lib -lssl -lcrypto -lycrypt -Wall
```

