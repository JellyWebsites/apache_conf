#!/bin/bash

for file in $PWD/*
do
    if [ "${file##*.}" = "conf" ]; then
        ln -s -f  $file ../sites-enabled/${file##*/}
    fi
done

