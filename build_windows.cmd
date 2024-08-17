set VERSION=%1
set WORKSPACE=%GITHUB_WORKSPACE%
cd %HOMEPATH%
git clone https://github.com/nodejs/node.git --branch=v%VERSION% --depth=1

cd node
echo build nodejs
call .\vcbuild.bat debug dll vs2022 nonpm
call .\vcbuild.bat dll vs2022 nonpm
