set VERSION=%1
set WORKSPACE=%GITHUB_WORKSPACE%
cd %HOMEPATH%
git clone https://github.com/nodejs/node.git

cd node
git fetch origin v%VERSION%
git checkout v%VERSION%

echo build nodejs
.\vcbuild.bat dll vs2022
.\vcbuild.bat debug dll vs2022
