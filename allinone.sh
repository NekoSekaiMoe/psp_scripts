#!/bin/bash

set -ex

bash diff.sh
perl check.pl
perl gen.pl
