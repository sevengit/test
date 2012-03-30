    ./configure \
        --arch=arm \
        --disable-static \
        --enable-shared \
        --enable-gpl \
        --enable-version3 \
        --enable-nonfree \
    --disable-doc \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-avdevice \
    --disable-avfilter \
    --disable-postproc \
    --enable-small \
    --cross-prefix=/usr/local/android-ndk-r6b/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/arm-linux-androideabi-* \
    --enable-cross-compile \
    --target-os=linux \
    --extra-cflags='-I/usr/local/android-ndk-r6b/platforms/android-9/arch-arm/usr/include' \
    --extra-ldflags='-/usr/local/android-ndk-r6b/platforms/android-9/arch-arm/usr/lib -nostdlib' \
    --arch=arm \
    --disable-symver \
    --disable-debug \
    --disable-stripping \
    
sed -i '' 's/HAVE_LRINT 0/HAVE_LRINT 1/g' config.h
sed -i '' 's/HAVE_LRINTF 0/HAVE_LRINTF 1/g' config.h
sed -i '' 's/HAVE_ROUND 0/HAVE_ROUND 1/g' config.h
sed -i '' 's/HAVE_ROUNDF 0/HAVE_ROUNDF 1/g' config.h
sed -i '' 's/HAVE_TRUNC 0/HAVE_TRUNC 1/g' config.h
sed -i '' 's/HAVE_TRUNCF 0/HAVE_TRUNCF 1/g' config.h

    