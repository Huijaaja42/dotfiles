#!/bin/sh

read -p 'Query: ' q && cht.sh $q && while [ : ]; do sleep 1; done
