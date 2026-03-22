#!/bin/bash
printf -v date '%(%Y-%m-%d)T' -1

echo "$date" > owcdb.txt

for dir in *; do
    if [ ! -d "$dir" ]; then
        continue
    fi

    for f in "$dir"/*.yaml; do
        if [ ! -f "$f" ]; then
            continue
        fi

        echo "${f::-5}" >> owcdb.txt
    done
done
