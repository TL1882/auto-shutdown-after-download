#!/bin/bash

echo "Monitoring current directory for active downloads..."

while ls *.crdownload 1>/dev/null 2>/dev/null; do
    sleep 120
done

echo "Download finished. Shutting down in 10 minutes..."

shutdown -h +10
