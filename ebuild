INITIAL_DIR=`pwd` # Save current dir
SCRIPT_DIR_TMP=`dirname "$0"`
cd "${SCRIPT_DIR_TMP}" # Go to script dir
SCRIPT_DIR=`pwd` # Save script dir
#cd "${INITIAL_DIR}" # Go back to initial directory 

cd ..
source edksetup.sh

export PATH="$SCRIPT_DIR/../../toolchain/bin":$PATH

build -t XCODE5 -a X64 -p RefindPkg/RefindPkg.dsc
