# bash!
sysOS=`uname -s`
git clone https://github.com/SVF-tools/SVF.git
cd SVF
. ./build.sh

if [[ $sysOS == "Darwin" ]]
then
#  tar -cvf svf-lib_mac.tar.gz
  echo $PWD
elif [[ $sysOS == "Linux" ]]
then
  echo $PWD
fi