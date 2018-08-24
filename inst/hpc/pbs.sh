#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR > /dev/null

MODEL=$(qsub model.pbs)
qsub -W depend=afterokarray:$MODEL output.pbs
EXITCODE=$?

popd > /dev/null
exit $EXITCODE