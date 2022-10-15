#!/bin/bash

while read p; do
    echo "\"$p\" "
done < <(oc get projects --no-headers=true | awk '{print $1}')
