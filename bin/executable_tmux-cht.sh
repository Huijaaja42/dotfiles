#!/bin/bash

while true; do
	printf "\n"
	read -rp 'Query: ' q && cht.sh "$q"
done
