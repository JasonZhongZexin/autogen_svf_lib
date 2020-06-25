# bash!
sysOS=`uname -s`
pwd
if [[ $sysOS == "Darwin" ]]
then
 tar -cvf $PWD/svflib.tar.gz -C $PWD/SVF/Release-build/lib/libSvf.a -C $PWD/SVF/Release-build/lib/CUDD/libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf $PWD/svflib.tar.gz -C $PWD/SVF/Release-build/lib/libSvf.a -C $PWD/SVF/Release-build/lib/CUDD/libCudd.a
  
fi
ls
