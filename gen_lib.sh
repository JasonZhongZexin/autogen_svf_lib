# bash!
sysOS=`uname -s`
pwd
cp $PWD/SVF/Release-build/lib/libSvf.a libSvf.a
cp $PWD/SVF/Release-build/lib/CUDD/libCudd.a libCudd.a
if [[ $sysOS == "Darwin" ]]
then
 tar -cvf svflib_mac.tar.gz libSvf.a libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf svflib_ubuntu.tar.gz libSvf.a libCudd.a
fi
ls
