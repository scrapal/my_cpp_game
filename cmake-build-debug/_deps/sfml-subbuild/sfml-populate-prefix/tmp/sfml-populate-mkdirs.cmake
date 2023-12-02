# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-src"
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-build"
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix"
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix/tmp"
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp"
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix/src"
  "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/maq/CLionProjects/game_learn/cmake-build-debug/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
