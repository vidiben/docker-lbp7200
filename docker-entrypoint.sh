#!/bin/bash

/usr/sbin/cupsd
/etc/init.d/ccpd restart

sleep 3 && /usr/sbin/lpadmin -p LBP7200 -P /usr/share/cups/model/CNCUPSLBP7200CCAPTK.ppd -v ccp://localhost:59687 -E

exec watch "/etc/init.d/ccpd status"
