# bash!
sysOS=`uname -s`
git clone https://github.com/SVF-tools/SVF.git
cd SVF
. ./build.sh

if [[ $sysOS == "Darwin" ]]
then
 tar -cvf /home/travis/build/charles32110/autogen_svf_lib/autogen_svf_lib/svflib_mac.tar.gz lib/libsvf_mac.a lib/CUDD/libCudd.a
  cd /home/travis/build/charles32110/autogen_svf_lib/autogen_svf_lib
  git add svflib_mac.tar.gz
  git commit -m "new_version"
  git push origin
elif [[ $sysOS == "Linux" ]]
then
  tar -cvf /home/travis/build/charles32110/autogen_svf_lib/autogen_svf_lib/svflib_ubuntu.tar.gz lib/libsvf_ubuntu.a lib/CUDD/libCudd.a
  cd /home/travis/build/charles32110/autogen_svf_lib/autogen_svf_lib
  git add svflib_ubuntu.tar.gz
  git commit -m "new_version"
  git push origin
fi

