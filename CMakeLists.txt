cmake_minimum_required(VERSION 3.5)

# initialize the SDK based on PICO_SDK_PATH
# note: this must happen before project()
#include(/usr/local/pico-sdk/external/pico_sdk_import.cmake)
include(pico_sdk_import.cmake)

project(blink)

# initialize the Pico SDK
pico_sdk_init()


add_executable(blink
    blink.c
)

# Add pico_stdlib library which aggregates commonly used features
target_link_libraries(blink pico_stdlib)

# create map/bin/hex/uf2 file in addition to ELF.
pico_add_extra_outputs(blink)

