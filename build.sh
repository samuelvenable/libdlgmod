cd "${0%/*}"
if [ `uname -o` = "Msys" ]; then
  g++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/win32/libdlgmod.cpp" -o "libdlgmod/win32/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/win32/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/win32/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o";
elif [ `uname` = "Darwin" ]; then
  clang++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -Ilibdlgmod/general -I. -std=c++17 -ObjC++ -mmacos-version-min=10.13 -arch arm64 -arch x86_64 -fPIC;
  clang++ -c "libdlgmod/macos/libdlgmod.mm" -o "libdlgmod/macos/libdlgmod.o" -Ilibdlgmod/general -I. -std=c++17 -ObjC++ -mmacos-version-min=10.13 -arch arm64 -arch x86_64 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/macos/libdlgmod.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/macos/libdlgmod.o";
elif [ `uname -o` = "GNU/Linux" ]; then
  g++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/xlib/libdlgmod.cpp" -o "libdlgmod/xlib/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/lodepng.cpp" -o "libdlgmod/general/lodepng.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
elif [ `uname` = "FreeBSD" ]; then
  clang++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/xlib/libdlgmod.cpp" -o "libdlgmod/xlib/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/general/lodepng.cpp" -o "libdlgmod/general/lodepng.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
elif [ `uname` = "DragonFly" ]; then
  g++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/xlib/libdlgmod.cpp" -o "libdlgmod/xlib/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/lodepng.cpp" -o "libdlgmod/general/lodepng.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
elif [ `uname` = "NetBSD" ]; then
  g++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/xlib/libdlgmod.cpp" -o "libdlgmod/xlib/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/lodepng.cpp" -o "libdlgmod/general/lodepng.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
elif [ `uname` = "OpenBSD" ]; then
  clang++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/xlib/libdlgmod.cpp" -o "libdlgmod/xlib/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  clang++ -c "libdlgmod/general/lodepng.cpp" -o "libdlgmod/general/lodepng.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
elif [ `uname` = "SunOS" ]; then
  export PKG_CONFIG_PATH=/usr/lib/64/pkgconfig;
  g++ -c "libdlgmod/general/libdlgmod.cpp" -o "libdlgmod/general/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/xlib/libdlgmod.cpp" -o "libdlgmod/xlib/libdlgmod.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/apiprocess/process.cpp" -o "libdlgmod/general/apiprocess/process.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/xprocess.cpp" -o "libdlgmod/general/xprocess.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  g++ -c "libdlgmod/general/lodepng.cpp" -o "libdlgmod/general/lodepng.o" -DPROCESS_GUIWINDOW_IMPL -DNULLIFY_STDERR -Ilibdlgmod/general -I. -std=c++17 -fPIC;
  ar rc "libdlgmod.a" "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
  rm -rf "libdlgmod/general/libdlgmod.o" "libdlgmod/xlib/libdlgmod.o" "libdlgmod/general/apiprocess/process.o" "libdlgmod/general/xprocess.o" "libdlgmod/general/lodepng.o";
fi;
