#!/bin/bash

if [[ "$1" == "" ]]; then
	echo choose file to install
	exit 1
fi

if [[ ! -f $1 ]]; then
	echo file ${1} does not exist
	exit 1
fi

cp $1 ~
