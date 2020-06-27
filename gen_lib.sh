# bash!
sysOS=`uname -s`
pwd
home=$pwd
echo $home
git clone https://github.com/SVF-tools/SVF-npm.git
cp -rf ./SVF/include ./SVF-npm/
if [[ $sysOS == "Darwin" ]]
then
  cp ./SVF/Release-build/lib/libSvf.a ./SVF-npm/mac/Release-build/lib
  cp ./SVF/Release-build/lib/CUDD/libCudd.a ./SVF-npm/mac/Release-build/lib
  cd SVF-npm
  git status
  git add .
  git commit -m'update svflib'
  git status
elif [[ $sysOS == "Linux" ]]
then
  cp ./SVF/Release-build/lib/libSvf.a ./SVF-npm/ubuntu/Release-build/lib
  cp ./SVF/Release-build/lib/CUDD/libCudd.a ./SVF-npm/ubuntu/Release-build/lib
  cd SVF-npm
  git status
  git add .
  git commit -m'update svflib'
  git status
fi
ls