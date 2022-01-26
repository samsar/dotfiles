#!/bin/bash

function doGit() {
    echo "...syncing $d"
    cd $d
    git pull --ff-only
    git remote prune origin
    cd ..
    echo ""
}

N=4
(
for d in [^.]*/ ; do
   ((i=i%N)); ((i++==0)) && wait
   doGit & 
done
)

# for d in [^.]*/ ; do
#     echo "...syncing $d"
#     cd $d
#     git pull --ff-only
#     git remote prune origin
#     cd ..
#     echo ""
# done
