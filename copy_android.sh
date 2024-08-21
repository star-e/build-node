ARCH="$1"

case $ARCH in
    arm)
        OUTPUT="arm-android"
        ;;
    x86)
        OUTPUT="x86-android"
        ;;
    x86_64)
        OUTPUT="x64-android"
        ;;
    arm64|aarch64)
        OUTPUT="arm64-android"
        ;;
    *)
        echo "Unsupported architecture provided: $ARCH"
        exit 1
        ;;
esac

case $ARCH in
    arm)
        ANDROID_ARCH="arm-linux-androideabi"
        ;;
    x86)
        ANDROID_ARCH="i686-linux-android"
        ;;
    x86_64)
        ANDROID_ARCH="x86_64-linux-android"
        ;;
    arm64|aarch64)
        ANDROID_ARCH="aarch64-linux-android"
        ;;
    *)
        echo "Unsupported architecture provided: $ARCH"
        exit 1
        ;;
esac

mkdir -p installed/nodejs/$OUTPUT/include
mkdir -p installed/nodejs/$OUTPUT/lib
mkdir -p installed/nodejs/$OUTPUT/debug/lib

cp node/src/js_native_api.h ./installed/nodejs/$OUTPUT/include/
cp node/src/js_native_api_types.h ./installed/nodejs/$OUTPUT/include/
cp node/src/node.h ./installed/nodejs/$OUTPUT/include/
cp node/src/node_api.h ./installed/nodejs/$OUTPUT/include/
cp node/src/node_api_types.h ./installed/nodejs/$OUTPUT/include/
cp node/src/node_buffer.h ./installed/nodejs/$OUTPUT/include/
cp node/src/node_object_wrap.h ./installed/nodejs/$OUTPUT/include/
cp node/src/node_version.h ./installed/nodejs/$OUTPUT/include/
cp -r node/deps/uv/include/* ./installed/nodejs/$OUTPUT/include/
cp -r node/deps/v8/include/* ./installed/nodejs/$OUTPUT/include/

cp node/out/Release/libnode.so* installed/nodejs/$OUTPUT/lib/
cp node/out/Debug/libnode.so* installed/nodejs/$OUTPUT/debug/lib/

cp ~/android-ndk-r27/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/$ANDROID_ARCH/libc++_shared.so installed/nodejs/$OUTPUT/lib/
cp ~/android-ndk-r27/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/$ANDROID_ARCH/libc++_shared.so installed/nodejs/$OUTPUT/debug/lib/
