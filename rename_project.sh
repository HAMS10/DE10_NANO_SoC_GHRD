#!/bin/bash

if [ -z "$1" ]; then
    echo "input name invalid \"$1\""
else
    cd ..

    cp -r DE10_NANO_SoC_GHRD $1

    cd $1

    for filename in DE10_NANO_SoC_GHRD*; do sed "s/DE10_NANO_SoC_GHRD/$1/g" $filename; done

    for filename in DE10_NANO_SoC_GHRD*; do mv $filename ${filename//DE10_NANO_SoC_GHRD/$1}; done

    rm -rf .git

    rm create_project.sh
fi
