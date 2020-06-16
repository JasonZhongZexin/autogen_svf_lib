# bash!
sysOS=`uname -s`
git clone https://github.com/SVF-tools/SVF.git
cd SVF
. ./build.sh

if [[ $sysOS == "Darwin" ]]
then
  echo $PWD
  ls
elif [[ $sysOS == "Linux" ]]
then
  echo $PWD
  ls
fi