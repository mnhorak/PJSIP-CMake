#!/bin/sh

cmake \
  -DTARGET_ANDROID=1\
  -DCMAKE_TOOLCHAIN_FILE=../$1/pjproject/cmake/android.toolchain.cmake\
  -DANDROID_LEVEL=android-14\
  -DANDROID_NATIVE_API_LEVEL=14\
  -DARM_TARGET=armeabi-v7a\
  -DFORCE_ARM=true\
  -DWITH_RESAMPLE_LIBRESAMPLE=1\
  -DWITH_CODEC_G722=1\
  -DWITH_CODEC_SPEEX=0\
  -DWITH_AUDIODEV_OPENSL=1\
  -DWITH_BUILTIN_OPENSSL=1\
  $1
