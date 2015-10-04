#!/bin/bash

if [ -f /config/config.ini ]; then
  echo "Using existing config file."
else
  echo "Copying default config to export interface to /config."
  cp /root/config.ini /config/
  chown nobody:users /config/config.ini
fi

exec /sbin/setuser nobody python /opt/headphones/Headphones.py --datadir=/config --nolaunch
