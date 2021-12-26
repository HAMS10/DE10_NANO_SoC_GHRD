#!/usr/bin/bash
rm -rdf qsys_headers/
mkdir qsys_headers
sopc-create-header-files \
soc_system.sopcinfo \
--output-dir \
qsys_headers
