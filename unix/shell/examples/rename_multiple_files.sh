#!/usr/bin/env bash

### -  Rename multiple files - ###

# tango_file1.sh to alpha_file1.sh
# tango_file2.sh to alpha_file2.sh
# tango_file3.sh to alpha_file3.sh
# ...

# Rename command (util-linux)
rename tango alpha tango_*.sh
