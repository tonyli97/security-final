#!/bin/bash


mkdir Server
cd Server
mkdir bin users serverCert 
cd users
# make all users 
# for each user: 


input=("addleness" "analects" "annalistic" "anthropomorphologically" "blepharosphincterectomy" "corector" "durwaun" "dysphasia" "encampment" "endoscopic" "exilic" "forfend" "gorbellied" "gushiness" "muermo" "neckar" "outmate" "outroll" "overrich" "philosophicotheological" "pockwood" "polypose" "refluxed" "reinsure" "repine" "scerne" "starshine" "unauthoritativeness" "unminced" "unrosed" "untranquil" "urushinic" "vegetocarbonaceous" "wamara" "whaledom")

for i in ${input[@]}
do
	mkdir $i
    cd $i
    mkdir mailbox hashedPasswords certificates 
    cd ..
done

