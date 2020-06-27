# bash!
sysOS=`uname -s`
pwd
if [[ $sysOS == "Darwin" ]]
then
 tar -cvf svflib_mac.tar.gz $PWD/SVF/Release-build/lib/libSvf.a $PWD/SVF/Release-build/lib/CUDD/libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf svflib_ubuntu.tar.gz $PWD/SVF/Release-build/lib/libSvf.a $PWD/SVF/Release-build/lib/CUDD/libCudd.a
fi
ls
