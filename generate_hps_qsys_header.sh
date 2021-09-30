#!/usr/bin/bash
mkdir software
sopc-create-header-files \
soc_system.sopcinfo \
--output-dir \
software
