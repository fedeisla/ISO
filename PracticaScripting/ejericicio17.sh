#!/bin/bash
for i in $(ls); do
	 echo "$i" | tr -d 'Aa' | tr 'a-zA-Z' 'A-Za-z'
done
