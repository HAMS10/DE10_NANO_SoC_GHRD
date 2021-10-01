#!/bin/bash
for filename in DE10_NANO_SoC_GHRD*; do sed "s/DE10_NANO_SoC_GHRD/$1/g" $filename; done

for filename in DE10_NANO_SoC_GHRD*; do mv $filename ${filename//DE10_NANO_SoC_GHRD/$1}; done

cd ../
mv DE10_NANO_SoC_GHRD $1