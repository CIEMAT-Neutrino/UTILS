#!/bin/sh
COMPILER=e20
VERSION=v09_63_00
DIRECTORY=larsoft
USERNAME=laurapm
HDIR=/dune/app/users

source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
cd ${HDIR}/${USERNAME}
touch ${DIRECTORY}
rm -rf ${DIRECTORY}
mkdir ${DIRECTORY}
cd ${DIRECTORY}
mrb newDev -q ${COMPILER}:prof
source ${HDIR}/${USERNAME}/${DIRECTORY}/localProducts*/setup
mkdir work
cd srcs

# checks out the develop versions of the split repositories
# use the -t <tag> option to check out a specific tag
# you can use mrb g dune_suite to get all the code below plus duneutil

# mrb g -t ${VERSION}d00 dunecore
# mrb g -t ${VERSION}d00 duneopdet
# mrb g -t ${VERSION}d00 dunesim
# mrb g -t ${VERSION}d00 dunecalib
mrb g -t ${VERSION}d00 duneprototypes
# mrb g -t ${VERSION}d00 dunedataprep
mrb g -t ${VERSION}d00 dunereco
mrb g -t ${VERSION}d00 duneana
# mrb g -t ${VERSION}d00 duneexamples
mrb g -t ${VERSION}d00 protoduneana
mrb g -t ${VERSION}d00 dunesw
mrb uc

cd $MRB_BUILDDIR
mrbsetenv

# build the software stack.  Use -j<n> where n is the number of cores on the machine.
# using <n> too large (such as 16 on a dunegpvm machine), will run the computer out of memory
# the dune build nodes have 16 cores and enough memory to run the build with -j16

mrb i -j16