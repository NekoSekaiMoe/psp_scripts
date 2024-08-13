#!/bin/sh

set -ex

nohup diff -urN cn ja
mv nohup.out 1.patch
