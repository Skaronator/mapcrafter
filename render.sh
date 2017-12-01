#!/bin/bash
if [ ! -f /config/render.conf ]; then
	echo "render.conf not found, creating default render.conf!"
    cp /render.conf /config/render.conf
fi

echo "Starting mapcrafter with $THREADS threads and timeout of $RUN_EVERY_SEC seconds!"

while true
do
	mapcrafter -c /config/render.conf -j $THREADS
	sleep $RUN_EVERY_SEC
done
