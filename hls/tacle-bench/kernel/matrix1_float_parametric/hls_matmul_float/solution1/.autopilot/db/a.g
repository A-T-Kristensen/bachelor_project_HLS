#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float_parametric/hls_matmul_float/solution1/.autopilot/db/a.g.bc ${1+"$@"}