#!/bin/bash

for i in {1..100}  
do  
    cp ~/.vnc/temp ~/.vnc/ubuntu:${i}.pid
    vncserver -kill :${i}
done  
