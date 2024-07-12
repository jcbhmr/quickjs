if(NOT "${ZIG_TARGET}" AND "$ENV{ZIG_TARGET}")
  set(ZIG_TARGET "$ENV{ZIG_TARGET}")
endif()

if("${ZIG_TARGET}")
    string(REPLACE "-" ";" ZIG_TARGET_LIST "${ZIG_TARGET}")
    list(GET ZIG_TARGET_LIST 0 ZIG_TARGET_ARCH)
    list(GET ZIG_TARGET_LIST 1 ZIG_TARGET_OS)
    unset(ZIG_TARGET_LIST)

  set(APPLE)
  set(UNIX)
  set(WIN32)

  if("${ZIG_TARGET_OS}" STREQUAL "macos")
    set(CMAKE_SYSTEM_NAME "Darwin")
    set(APPLE 1)
    set(UNIX 1)
  elseif("${ZIG_TARGET_OS}" STREQUAL "linux")
    set(UNIX 1)
  elseif("${ZIG_TARGET_OS}" STREQUAL "windows")
    set(WIN32 1)
  endif()

  if(NOT "${CMAKE_SYSTEM_NAME}")
    if("${ZIG_TARGET_OS}" STREQUAL "wasi")
        set(CMAKE_SYSTEM_NAME "WASI")
    else()
        # "windows" => "Windows"
        string(SUBSTRING "${ZIG_TARGET_OS}" 0 1 ZIG_TARGET_OS_FIRST)
        string(TOUPPER "${ZIG_TARGET_OS_FIRST}" ZIG_TARGET_OS_FIRST)
        string(SUBSTRING "${ZIG_TARGET_OS}" 1 10 ZIG_TARGET_OS_REST)
        set(CMAKE_SYSTEM_NAME "${ZIG_TARGET_OS_FIRST}${ZIG_TARGET_OS_REST}")
        unset(ZIG_TARGET_OS_FIRST)
        unset(ZIG_TARGET_OS_REST)
    endif()
  endif()

  set(CMAKE_SYSTEM_PROCESSOR "${ZIG_TARGET_ARCH}")

  set(ZIG_TARGET_ARG "--target=${ZIG_TARGET}")
  
  unset(ZIG_TARGET_ARCH)
  unset(ZIG_TARGET_OS)
endif()

# https://github.com/ziglang/zig/wiki/FAQ#why-do-i-get-illegal-instruction-when-using-with-zig-cc-to-build-c-code
set(ZIG_FLAGS_INIT "-fno-sanitize=undefined")

set(CMAKE_C_COMPILER "zig" "cc" ${ZIG_TARGET_ARG})
set(CMAKE_C_COMPILER_ID "Clang")
set(CMAKE_C_COMPILER_TARGET "${ZIG_TARGET}")
set(CMAKE_C_FLAGS_INIT "${ZIG_FLAGS_INIT}")

set(CMAKE_ASM_COMPILER "zig" "cc" ${ZIG_TARGET_ARG})
set(CMAKE_ASM_COMPILER_ID "Clang")
set(CMAKE_ASM_COMPILER_TARGET "${ZIG_TARGET}")
set(CMAKE_ASM_FLAGS_INIT "${ZIG_FLAGS_INIT}")

set(CMAKE_CXX_COMPILER "zig" "c++" ${ZIG_TARGET_ARG})
set(CMAKE_CXX_COMPILER_ID "Clang")
set(CMAKE_CXX_COMPILER_TARGET "${ZIG_TARGET}")
set(CMAKE_CXX_FLAGS_INIT "${ZIG_FLAGS_INIT}")

unset(ZIG_TARGET_ARG)
unset(ZIG_FLAGS_INIT)

set(CMAKE_AR "${CMAKE_CURRENT_LIST_DIR}/zig-ar")
set(CMAKE_RANLIB "${CMAKE_CURRENT_LIST_DIR}/zig-ranlib")