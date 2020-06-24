# bash!
sysOS=`uname -s`

if [[ $sysOS == "Darwin" ]]
then
 tar -cvf $PWD/svflib_mac.tar.gz $PWD/SVF/Release-build/lib/libsvf_mac.a $PWD/SVF/Release-build/lib/CUDD/libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf $PWD/svflib_ubuntu.tar.gz $PWD/SVF/Release-build/lib/libsvf_ubuntu.a $PWD/SVF/Release-build/lib/CUDD/libCudd.a
fi

