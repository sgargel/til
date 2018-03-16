#!/bin/sh
URL=$1
JSON=$2
set -m # Enable Job Control

for i in `seq 30`; do # start 30 jobs in parallel
	curl --request POST \
	  --url ${URL} \
	  --header 'content-type: application/json' \
	  --data ${JSON} &

done

# Wait for all parallel jobs to finish
while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done
