#!/bin/bash
echo "Digite o 1 numero da sequencia"
read n1
echo "Digite o 2 numero da sequencia"
read n2
echo "Digite a rede a ser testada"
read rede
for arp in $(seq $n1 $n2); 
do
arping -c 1 $rede.$arp; done | grep "60 bytes" 
