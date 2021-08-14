#!/bin/sh

if [ -f ./custom.sh ]; then
   chmod 700 ./custom.sh
   ./custom.sh
else
    cd swift
    swift --version
    swift connect.swift
fi