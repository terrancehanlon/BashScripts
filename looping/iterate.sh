#!/bin/bash
CURRENT=$PWD/*;
for f in $CURRENT
do
	cat $f
done

