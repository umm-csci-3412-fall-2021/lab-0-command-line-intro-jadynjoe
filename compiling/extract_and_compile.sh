#!/usr/bin/env bash
tar -x -z -f NthPrime.tgz
# Bail out in case an NthPrime directory didn't get created.
cd NthPrime || exit
gcc main.c nth_prime.c
mv a.out NthPrime
./NthPrime "$1"
