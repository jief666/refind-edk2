# Building rEFInd with EDKII on OS X

This repository contains EDKII build information files (DSC and DEC) for building rEFInd in the context of the EDKII. The author of rEFInd has provided a Makefile for building rEFInd using the GCC toolchain and the EDKII on Linux, but there are a number of `ld` and `gcc` options used that are incompatible with the Mac OS X toolchain. Rather than do the right thing and figure out what the appropriate options are, I've just dumped the rEFInd source into a new *Package* in the EDKII and added DSC and DEC files to get it to build on OS X.

This works for me on Mac OS X 10.7.4 with Xcode 4.4 and its command line tools.

## Building

0. Be sure to have nasm updated from original Os X version
	NASM version 0.98.40 (Apple Computer, Inc. build 11) compiled on Mar 10 2015 won't work.
	
	
1. Prepare and build your EDKII environment.

        $ cd /path/to/project
        $ git clone https://github.com/tianocore/edk2.git edk2
        $ cd edk2
        $ source edksetup.sh
        $ make -C ./BaseTools/Source/C   -> lot of warnings here, but that's ok


2. Clone this repository into the root directory of the EDKII.

        $ git clone https://github.com/jief666/refind-edk2.git RefindPkg


3. Clone a refind source repository. Example with my fork. Might not be up to date.

        $ cd RefindPkg
        $ git clone git://git.code.sf.net/u/jief7/refind

        
4. Build the package.

        $ ./ebuild
