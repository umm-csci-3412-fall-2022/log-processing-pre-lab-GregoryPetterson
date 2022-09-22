#!/bin/sh

input0=r0_input.txt 
input1=r1_input.txt
input2=r2_input.txt


touch r0_output.txt
touch r1_output.txt
touch r2_output.txt

awk 'match ($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n";}' < "$input0" > r0_output.txt

awk 'match($0, /([A-Z][a-zA-Z]+)\..+s\s([a-z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n"}' < "$input1" > r1_output.txt


awk 'match($0, /.+with\s(\S+)\s([a-z]+\s[a-z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n"}' < "$input2" > r2_output.txt
