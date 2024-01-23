# remember to actually set these..
export SPLAT_DIR=/home/tiago/splat
export TOOLCHAIN=/home/tiago/toolchain/clang-cl-msvc.cmake
# this is supposed to default to x86 but it doesnt for some reason
export HOST_ARCH=x86

# you can also use `-G Ninja` here
cmake \
  -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN \
  -DGEODE_DISABLE_FMT_CONSTEVAL=1 \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=1
  -B build

cmake --build build --config Release
