#!/bin/bash

service cups start
/etc/init.d/ccpd restart

/usr/sbin/lpadmin -p CANON-LBP7200 -P /usr/share/cups/model/CNCUPSLBP7200CCAPTK.ppd -v ccp://localhost:59787 -E

exec watch "/etc/init.d/ccpd status"
