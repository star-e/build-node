VERSION=$1
ARCH=$2

git clone https://github.com/nodejs/node.git --branch=v$VERSION --depth=1

cd node
git apply ../patches/v$VERSION.android.patch

# NDK r27, SDK r28
./android-configure ~/android-ndk-r27 28 $ARCH
make -j4
