#!/usr/bin/bash
mkdir qsys_headers
sopc-create-header-files \
soc_system.sopcinfo \
--output-dir \
qsys_headers
