# bash!
sysOS=`uname -s`

if [[ $sysOS == "Darwin" ]]
then
 tar -cvf /home/travis/build/charles32110/autogen_svf_lib/autogen_svf_lib/svflib_mac.tar.gz lib/libsvf_mac.a lib/CUDD/libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf /home/travis/build/charles32110/autogen_svf_lib/autogen_svf_lib/svflib_ubuntu.tar.gz lib/libsvf_ubuntu.a lib/CUDD/libCudd.a
fi

