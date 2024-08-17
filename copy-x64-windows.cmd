cd %HOMEPATH%

md installed\nodejs\x64-windows\include
md installed\nodejs\x64-windows\include\deps\uv\include
md installed\nodejs\x64-windows\include\deps\v8\include

md installed\nodejs\x64-windows\bin
md installed\nodejs\x64-windows\lib
md installed\nodejs\x64-windows\debug\bin
md installed\nodejs\x64-windows\debug\lib

copy node\out\Release\libnode.dll .\installed\nodejs\x64-windows\bin\
copy node\out\Release\libnode.exp .\installed\nodejs\x64-windows\lib\
copy node\out\Release\libnode.lib .\installed\nodejs\x64-windows\lib\
copy node\out\Release\libnode.pdb .\installed\nodejs\x64-windows\lib\
copy node\out\Debug\libnode.dll .\installed\nodejs\x64-windows\debug\bin\
copy node\out\Debug\libnode.exp .\installed\nodejs\x64-windows\debug\lib\
copy node\out\Debug\libnode.lib .\installed\nodejs\x64-windows\debug\lib\
copy node\out\Debug\libnode.pdb .\installed\nodejs\x64-windows\debug\lib\
