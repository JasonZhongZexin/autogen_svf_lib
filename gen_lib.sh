# bash!
sysOS=`uname -s`
path=$(pwd)
if [[ $sysOS == "Darwin" ]]
then
 tar -cvf $path/svflib.tar.gz -C $path/SVF/Release-build/lib/libSvf.a $path/SVF/Release-build/lib/CUDD/libCudd.a
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf $PWD/svflib.tar.gz -C $path/SVF/Release-build/lib/libSvf.a $path/SVF/Release-build/lib/CUDD/libCudd.a
fi
ls
