#!/bin/bash

ping_host(){
	host=$1
	echo "Pinging host: $host"
	ping -c 4 -i 1 $host
	echo "Ping al host $host terminado"
}

ping_host "google.com"
ping_host "localhost" 
ping_host "tuia.com" 


echo "Todos los ping completados"
