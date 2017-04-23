#!/bin/bash

#sed -i "s/UPSCABLE smart/UPSCABLE usb/g" /etc/apcupsd/apcupsd.conf
#sed -i "s/NISIP 127.0.0.1/NISIP 0.0.0.0/g" /etc/apcupsd/apcupsd.conf
#sed -i "s/UPSTYPE apcsmart/UPSTYPE usb/g" /etc/apcupsd/apcupsd.conf
#sed -i "s/DEVICE \/dev\/ttyS0/DEVICE/g" /etc/apcupsd/apcupsd.conf

sed -i "s/UPSCABLE smart/UPSCABLE ether/g" /etc/apcupsd/apcupsd.conf
sed -i "s/NISIP 127.0.0.1/NISIP 0.0.0.0/g" /etc/apcupsd/apcupsd.conf
sed -i "s/UPSTYPE apcsmart/UPSTYPE snmp/g" /etc/apcupsd/apcupsd.conf
sed -i "s/DEVICE \/dev\/ttyS0/DEVICE 192.168.1.11:161:APC:private/g" /etc/apcupsd/apcupsd.conf

apcupsd -b;
