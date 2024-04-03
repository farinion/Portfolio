#!/bin/bash

#Request the first 3 octets of the network address
echo "Enter 3 octects to use for a network address"
read -p "xxxx.yyyy.zzzz : " address

#Iterates through all possible IP's in the network.
for each in {1..255};
    do ping -c 1 "$address.$each" >> fullPing.txt
done

#Filters the full text into only successful connections.
cat fullPing.txt | grep "64 bytes" >> filteredPing.txt