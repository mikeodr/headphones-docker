#!/bin/bash

exec /sbin/setuser nobody python /opt/headphones/Headphones.py --datadir=/config --nolaunch
