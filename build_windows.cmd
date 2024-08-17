set VERSION=%1
set WORKSPACE=%GITHUB_WORKSPACE%
cd %HOMEPATH%
git clone https://github.com/nodejs/node.git

cd node
git fetch origin v%VERSION%
git checkout v%VERSION%

echo build nodejs
.\vcbuild.bat dll
.\vcbuild.bat debug dll
