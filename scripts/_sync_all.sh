#!/bin/bash

function doGit() {
    echo "...syncing $d"
    cd $d
    git pull --ff-only
    git remote prune origin
    cd ..
    echo ""
}

INDEX=0
N=4
(
# run processes in batches of 4, and store pids in array
for d in [^.]*/ ; do
   ((i=i%N)); ((i++==0)) && wait
   doGit & 
   pids[INDEX++]=$!
done

# then wait for them all to finish
for pid in ${pids[*]}; do
    wait $pid > /dev/null 2>&1
done
)
