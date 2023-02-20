#!/bin/bash

updates=$(apt-get upgrade --dry-run | awk 'NR==10' | wc -w)

if [ $updates -gt 0 ];
then
	echo "You have $updates updates available";
fi
