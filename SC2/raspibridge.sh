#!/bin/sh

while true
do
   ping -c 1 -w 1 -n 192.168.42.200 >/dev/null 2>&1 
   rc=$?; if [[ $rc == 0 ]]; then
      ping -c 1 -w 1 -n 192.168.42.1 >/dev/null 2>&1
      rc=$?; if [[ $rc == 0 ]]; then
         mpp_bb_cli on 3
      fi
   fi
   sleep 2
   cp -p /data/lib/mppd/mydrone_manager.cfg /data/lib/mppd/drone_manager.cfg
done
