cmake_minimum_required(VERSION 3.13...3.27)

include(extern/pico-sdk/pico_sdk_init.cmake)

project(my_project)

pico_sdk_init()

add_executable(hello_world apps/hello_world.c)

# Add pico_stdlib library which aggregates commonly used features
target_link_libraries(hello_world pico_stdlib)

# create map/bin/hex/uf2 file in addition to ELF.
pico_add_extra_outputs(hello_world)

