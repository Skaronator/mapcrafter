#!/bin/bash
if [ ! -f /config/render.conf ]; then
	echo "render.conf not found, creating default render.conf!"
    cp /render.conf /config/render.conf
fi

echo "Starting mapcrafter with $THREADS threads!"

mapcrafter -c /config/render.conf -j $THREADS >> /var/log/cron.log 2>&1
