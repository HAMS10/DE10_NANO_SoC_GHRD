#!/bin/bash

if [ -z "$1" ]; then
    echo "input name invalid \"$1\""
else

    cd ..
    
    rm -rfd $1

    cp -r DE10_NANO_SoC_GHRD $1

    cd $1
    
    while read -r entry;do rm -rf ${entry}; done < .gitignore
    
    rm -rfd .git

    for filename in DE10_NANO_SoC_GHRD*; do sed -i "s/DE10_NANO_SoC_GHRD/$1/g" $filename $filename; done
    for filename in DE10_NANO_SOC_GHRD*; do sed -i "s/DE10_NANO_SOC_GHRD/$1/g" $filename $filename; done
    
    for filename in DE10_NANO_SoC_GHRD*; do mv $filename ${filename//DE10_NANO_SoC_GHRD/$1}; done
    for filename in DE10_NANO_SOC_GHRD*; do mv $filename ${filename//DE10_NANO_SOC_GHRD/$1}; done

    rm create_project.sh
fi
