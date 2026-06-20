#!/bin/bash

THRESHOLD=80

CPU=$(vmstat 1 2 | awk 'NR==4 {print int(100-$15)}')
MEM=$(free | awk '/Mem:/ {printf "%.0f\n", ($3*100)/$2}')
DSK=$(df / | awk 'NR==2 {print int($5)}')

if [ "$CPU" -gt "$THRESHOLD" ] || [ "$MEM" -gt "$THRESHOLD" ] || [ "$DSK" -gt "$THRESHOLD" ]; then
    echo "Alert!: spikes are high. please check-:"
    echo "CPU: $CPU%"
    echo "MEM: $MEM%"
    echo "DISK: $DSK%"
    
fi
