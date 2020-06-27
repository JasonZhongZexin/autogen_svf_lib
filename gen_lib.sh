# bash!
sysOS=`uname -s`
home=$pwd
git clone https://github.com/SVF-tools/SVF-npm.git
if [[ $sysOS == "Darwin" ]]
then
  cp -rf ./SVF/mac/include ./SVF-npm/
  cp ./SVF/Release-build/lib/libSvf.a ./SVF-npm/mac/Release-build/lib
  cp ./SVF/Release-build/lib/CUDD/libCudd.a ./SVF-npm/mac/Release-build/lib/CUDD
elif [[ $sysOS == "Linux" ]]
then
  cp -rf ./SVF/ubuntu/include ./SVF-npm/
  cp ./SVF/Release-build/lib/libSvf.a ./SVF-npm/ubuntu/Release-build/lib
  cp ./SVF/Release-build/lib/CUDD/libCudd.a ./SVF-npm/ubuntu/Release-build/lib/CUDD
fi
cd SVF-npm
git add .
git commit -m'update svflib'
ls