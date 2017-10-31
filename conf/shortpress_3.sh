#!/bin/sh
#Set the SSID, Password and IP
# SSID='beboper'
# PW='password'
IP=192.168.30.107

#Connect to defined Network
BLDC_Test_Bench -M 2 >/dev/null
sleep 1 &&
mount -o remount,rw / && 
sleep 1 && 
ifconfig eth0 $IP &&
sleep 1 &&
wpa_supplicant -B -i eth0 -c /etc/beboper.conf &&
sleep 1 &&
BLDC_Test_Bench -M 2 >/dev/null
#wait 5 &&
#/sbin/udhcpc -i eth0 
