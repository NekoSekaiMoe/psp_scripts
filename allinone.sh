#!/bin/bash

set -ex

nohup diff -urN cn ja
mv nohup.out 1.patch
perl check.pl
perl gen.pl
bash files.sh
