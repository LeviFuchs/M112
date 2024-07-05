#!/bin/bash

echo "hier bin ich das beste skript"

for i in $(ls /var); do
	echo "im dir /var/ steht drin:"$i
done
