cmake_minimum_required(VERSION 3.10)
project(_raisim_gym_torch)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/bin)

######################
### help functions ###
######################
MACRO(SUBDIRLIST result curdir)
    FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
    SET(dirlist "")
    FOREACH(child ${children})
        IF(IS_DIRECTORY ${curdir}/${child})
            LIST(APPEND dirlist ${child})
        ENDIF()
    ENDFOREACH()
    SET(${result} ${dirlist})
ENDMACRO()

####################
### dependencies ###
####################
set(Dependencies)
set(low_controller_path ${CMAKE_CURRENT_SOURCE_DIR}/default_controller_demo)

add_subdirectory(thirdParty/pybind11 pybind11)
add_subdirectory(${low_controller_path} default_controller_demo)
#add_subdirectory(examples)

message(${low_controller_path})

find_package(Eigen3 REQUIRED)
find_package(OpenMP REQUIRED)


if (UNIX AND NOT APPLE AND NOT ANDROID AND NOT WEBGL AND NOT WIN32)
    set(RAISIM_OS linux)
    list(APPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../raisim_ws/raisimLib/raisim/${RAISIM_OS})
elseif(APPLE)
    set(RAISIM_OS mac)
    list(APPEND CMAKE_PREFIX_PATH ../raisim/${RAISIM_OS})
    list(APPEND Dependencies OpenMP::OpenMP_CXX)
elseif(WIN32)
    set(RAISIM_OS win32)
    list(APPEND CMAKE_PREFIX_PATH ../raisim/${RAISIM_OS}/mt_debug)
    list(APPEND CMAKE_PREFIX_PATH ../thirdParty)
    list(APPEND Dependencies Ws2_32)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/bin)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/bin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/bin)
endif()

find_package(raisim REQUIRED PATHS ${CMAKE_CURRENT_SOURCE_DIR}/../../raisim_ws/raisimLib/raisim/${RAISIM_OS})

#find_package(raisim REQUIRED PATHS /home/oem/workspace/raisimLib/raisim/linux)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")

#######################
### src and linking ###
#######################
SUBDIRLIST(SUBDIRS ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/envs)
set(RAISIMGYM_ENV_DIR ${CMAKE_CURRENT_SOURCE_DIR}/raisimGymTorch/env/envs)

subdir_names(CONTROLLERS ${low_controller_path}/module/controller)
list(REMOVE_ITEM CONTROLLERS common)
message(${CONTROLLERS})

FOREACH(subdir ${SUBDIRS})
    pybind11_add_module(${subdir} raisimGymTorch/env/raisim_gym.cpp raisimGymTorch/env/Yaml.cpp)
    target_link_libraries(${subdir} PRIVATE raisim::raisim ${Dependencies})
    target_include_directories(${subdir} PUBLIC ${EIGEN3_INCLUDE_DIRS} ${RAISIMGYM_ENV_DIR}/${subdir})
#    foreach(con ${CONTROLLERS})
#        target_include_directories(${subdir} PUBLIC ${low_controller_path}/module/controller/${con})
#    endforeach()
    target_include_directories(${subdir} PUBLIC ${low_controller_path}/..)
#    target_compile_options(${subdir} PRIVATE -fPIC -O0)
    target_compile_options(${subdir} PRIVATE -flto -mtune=native -fPIC -O3 -march=native)
    target_compile_definitions(${subdir} PRIVATE "-DRAISIMGYM_TORCH_ENV_NAME=${subdir}")
    target_compile_definitions(${subdir} PRIVATE EIGEN_DONT_PARALLELIZE)
    target_compile_definitions(${subdir} PRIVATE "$<$<CONFIG:RELEASE>:EIGEN_NO_DEBUG>")

    message("[RAISIM_GYM] BUILDING THE DEBUG APP for ${subdir}")
    add_executable(${subdir}_debug_app raisimGymTorch/env/debug_app.cpp raisimGymTorch/env/Yaml.cpp raisimGymTorch/env/envs/rsg_raibo_rough_terrain/RandomObjectGenerator.hpp)
    target_link_libraries(${subdir}_debug_app PRIVATE raisim::raisim)
    target_include_directories(${subdir}_debug_app PUBLIC raisimGymTorch/env/envs/${subdir} ${EIGEN3_INCLUDE_DIRS})
    if(WIN32)
        target_link_libraries(${subdir}_debug_app PRIVATE Ws2_32)
    else()
        target_compile_options(${subdir}_debug_app PRIVATE -fPIC -O0)
    endif()
ENDFOREACH()
