# bash!
sysOS=`uname -s`

if [[ $sysOS == "Darwin" ]]
then
 tar -cvf /home/travis/build/charles32110/autogen_svf_lib/svflib_mac.tar.gz /home/travis/build/charles32110/autogen_svf_lib/SVF/Release-build/lib/libsvf_mac.a /home/travis/build/charles32110/autogen_svf_lib/SVF/Release-build/lib/CUDD/libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf /home/travis/build/charles32110/autogen_svf_lib/svflib_ubuntu.tar.gz /home/travis/build/charles32110/autogen_svf_lib/SVF/Release-build/lib/libsvf_ubuntu.a /home/travis/build/charles32110/autogen_svf_lib/SVF/Release-build/lib/CUDD/libCudd.a
fi

