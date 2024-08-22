cd %HOMEPATH%

md installed\nodejs\x64-windows\include

copy node\src\js_native_api.h .\installed\nodejs\x64-windows\include\
copy node\src\js_native_api_types.h .\installed\nodejs\x64-windows\include\
copy node\src\node.h .\installed\nodejs\x64-windows\include\
copy node\src\node_api.h .\installed\nodejs\x64-windows\include\
copy node\src\node_api_types.h .\installed\nodejs\x64-windows\include\
copy node\src\node_buffer.h .\installed\nodejs\x64-windows\include\
copy node\src\node_object_wrap.h .\installed\nodejs\x64-windows\include\
copy node\src\node_version.h .\installed\nodejs\x64-windows\include\

robocopy node\deps\uv\include\ .\installed\nodejs\x64-windows\include\ /s /e
robocopy node\deps\v8\include\ .\installed\nodejs\x64-windows\include\ /s /e

md installed\nodejs\x64-windows\bin
md installed\nodejs\x64-windows\lib
md installed\nodejs\x64-windows\debug\bin
md installed\nodejs\x64-windows\debug\lib

copy node\out\Release\libnode.dll .\installed\nodejs\x64-windows\bin\
copy node\out\Release\libnode.lib .\installed\nodejs\x64-windows\lib\
copy node\out\Release\libnode.exp .\installed\nodejs\x64-windows\lib\
@REM copy node\out\Release\libnode.pdb .\installed\nodejs\x64-windows\lib\
copy node\out\Debug\libnode.dll .\installed\nodejs\x64-windows\debug\bin\
copy node\out\Debug\libnode.lib .\installed\nodejs\x64-windows\debug\lib\
copy node\out\Debug\libnode.exp .\installed\nodejs\x64-windows\debug\lib\
@REM copy node\out\Debug\libnode.pdb .\installed\nodejs\x64-windows\debug\lib\
