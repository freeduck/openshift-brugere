#!/bin/bash

set -euo pipefail
scriptdir=$(cd $(dirname $0) && pwd)
projectdir_prefix=project-info
main () {
    while read p; do
	echo "\"$p\" "
	projectdir=$scriptdir/$projectdir_prefix/$p
	echo "$projectdir"
	mkdir -p $projectdir
	groups $p $projectdir
    done < <(oc get projects --no-headers=true | awk '{print $1}' | sort)
}

groups () {
    project=$1
    shift
    projectdir=$1
    shift
    grep $project adgroups.txt
    echo "OC groups"
    grep $project allgroups
    while read g; do
	groupdir=$projectdir/$g
	mkdir -p $groupdir
	grep $project allgroups| awk '{print substr($0,index($0, $2))}' > $groupdir/brugere
    done < <(grep $project allgroups| awk '{print $1}')
}

main
