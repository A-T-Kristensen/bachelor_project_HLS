#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/fir2dim/hls_fir2dim/solution1/.autopilot/db/a.g.bc ${1+"$@"}