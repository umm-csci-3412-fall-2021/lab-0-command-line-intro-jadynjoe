tar -x -z -f NthPrime.tgz
cd NthPrime 
gcc main.c nth_prime.c
mv a.out NthPrime
./NthPrime "$1"
