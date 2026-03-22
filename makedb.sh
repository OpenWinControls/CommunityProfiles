#!/bin/bash
printf -v date '%(%Y-%m-%d)T' -1

echo "$date" > owcdb.txt

for dir in *; do
    if [ ! -d "$dir" ]; then
        continue
    fi

    for f in "$dir"/*.yml; do
        echo "${f::-4}" >> owcdb.txt
    done
done
