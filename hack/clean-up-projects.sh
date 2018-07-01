#!/bin/bash

if [[ -n $1 ]]; then
    echo "param provided to script, deleting projects postfixed with $1"
    oc delete project map-ci-cd$1 map-dev$1 map-test$1
else
    echo "no param provided to script, deleting default projects"
    oc delete project map-ci-cd map-dev map-test
fi
