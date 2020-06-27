# bash!
sysOS=`uname -s`
pwd
home=$pwd
git clone https://github.com/SVF-tools/SVF-npm.git
if [[ $sysOS == "Darwin" ]]
then
  cp $home/SVF/Release-build/lib/libSvf.a libSvf_mac.a
  cp $home/SVF/Release-build/lib/CUDD/libCudd.a libCudd_mac.a
  cp $home/libSvf_mac.a ./SVF-npm/Release-build/lib
  cp $home/libCudd_mac.a ./SVF-npm/Release-build/lib
  cd SVF-npm
  git add .
  git status
elif [[ $sysOS == "Linux" ]]
then
  cp $home/SVF/Release-build/lib/libSvf.a libSvf_ubuntu.a
  cp $home/SVF/Release-build/lib/CUDD/libCudd.a libCudd_ubuntu.a
  cp $home/libSvf_ubuntu.a ./SVF-npm/Release-build/lib
  cp $home/libCudd_ubuntu.a ./SVF-npm/Release-build/libb
  cd SVF-npm
  git add .
  git status
fi
ls