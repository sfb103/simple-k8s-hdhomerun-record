#!/bin/bash

docker run -ti --name hdhomerun-record \
           -h $HOSTNAME \
	   --net=host \
           -v /mnt/disks/recordings/HDHomeRun:/HDHomeRun \
           hdhomerun-record:latest

