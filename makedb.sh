#!/bin/bash
printf -v date '%(%Y-%m-%d)T\n' -1

echo "$date" > owcdb.txt

for dir in *; do
    if [ ! -d "$dir" ]; then
        continue
    fi

    for f in "$dir"/*.yml; do
        echo "$f" >> owcdb.txt
    done
done
