# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Long\Program files\CLion 2024.1\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Long\Program files\CLion 2024.1\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Long\The University of Technology\Graph"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Long\The University of Technology\Graph\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Graph.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Graph.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Graph.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Graph.dir/flags.make

CMakeFiles/Graph.dir/main.cpp.obj: CMakeFiles/Graph.dir/flags.make
CMakeFiles/Graph.dir/main.cpp.obj: D:/Long/The\ University\ of\ Technology/Graph/main.cpp
CMakeFiles/Graph.dir/main.cpp.obj: CMakeFiles/Graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Graph.dir/main.cpp.obj"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graph.dir/main.cpp.obj -MF CMakeFiles\Graph.dir\main.cpp.obj.d -o CMakeFiles\Graph.dir\main.cpp.obj -c "D:\Long\The University of Technology\Graph\main.cpp"

CMakeFiles/Graph.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graph.dir/main.cpp.i"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Long\The University of Technology\Graph\main.cpp" > CMakeFiles\Graph.dir\main.cpp.i

CMakeFiles/Graph.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graph.dir/main.cpp.s"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Long\The University of Technology\Graph\main.cpp" -o CMakeFiles\Graph.dir\main.cpp.s

CMakeFiles/Graph.dir/shortest_path.cpp.obj: CMakeFiles/Graph.dir/flags.make
CMakeFiles/Graph.dir/shortest_path.cpp.obj: D:/Long/The\ University\ of\ Technology/Graph/shortest_path.cpp
CMakeFiles/Graph.dir/shortest_path.cpp.obj: CMakeFiles/Graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Graph.dir/shortest_path.cpp.obj"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graph.dir/shortest_path.cpp.obj -MF CMakeFiles\Graph.dir\shortest_path.cpp.obj.d -o CMakeFiles\Graph.dir\shortest_path.cpp.obj -c "D:\Long\The University of Technology\Graph\shortest_path.cpp"

CMakeFiles/Graph.dir/shortest_path.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graph.dir/shortest_path.cpp.i"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Long\The University of Technology\Graph\shortest_path.cpp" > CMakeFiles\Graph.dir\shortest_path.cpp.i

CMakeFiles/Graph.dir/shortest_path.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graph.dir/shortest_path.cpp.s"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Long\The University of Technology\Graph\shortest_path.cpp" -o CMakeFiles\Graph.dir\shortest_path.cpp.s

CMakeFiles/Graph.dir/functions.cpp.obj: CMakeFiles/Graph.dir/flags.make
CMakeFiles/Graph.dir/functions.cpp.obj: D:/Long/The\ University\ of\ Technology/Graph/functions.cpp
CMakeFiles/Graph.dir/functions.cpp.obj: CMakeFiles/Graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Graph.dir/functions.cpp.obj"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graph.dir/functions.cpp.obj -MF CMakeFiles\Graph.dir\functions.cpp.obj.d -o CMakeFiles\Graph.dir\functions.cpp.obj -c "D:\Long\The University of Technology\Graph\functions.cpp"

CMakeFiles/Graph.dir/functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graph.dir/functions.cpp.i"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Long\The University of Technology\Graph\functions.cpp" > CMakeFiles\Graph.dir\functions.cpp.i

CMakeFiles/Graph.dir/functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graph.dir/functions.cpp.s"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Long\The University of Technology\Graph\functions.cpp" -o CMakeFiles\Graph.dir\functions.cpp.s

CMakeFiles/Graph.dir/traverse.cpp.obj: CMakeFiles/Graph.dir/flags.make
CMakeFiles/Graph.dir/traverse.cpp.obj: D:/Long/The\ University\ of\ Technology/Graph/traverse.cpp
CMakeFiles/Graph.dir/traverse.cpp.obj: CMakeFiles/Graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Graph.dir/traverse.cpp.obj"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graph.dir/traverse.cpp.obj -MF CMakeFiles\Graph.dir\traverse.cpp.obj.d -o CMakeFiles\Graph.dir\traverse.cpp.obj -c "D:\Long\The University of Technology\Graph\traverse.cpp"

CMakeFiles/Graph.dir/traverse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graph.dir/traverse.cpp.i"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Long\The University of Technology\Graph\traverse.cpp" > CMakeFiles\Graph.dir\traverse.cpp.i

CMakeFiles/Graph.dir/traverse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graph.dir/traverse.cpp.s"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Long\The University of Technology\Graph\traverse.cpp" -o CMakeFiles\Graph.dir\traverse.cpp.s

CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj: CMakeFiles/Graph.dir/flags.make
CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj: D:/Long/The\ University\ of\ Technology/Graph/minimum_spanning_tree.cpp
CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj: CMakeFiles/Graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj -MF CMakeFiles\Graph.dir\minimum_spanning_tree.cpp.obj.d -o CMakeFiles\Graph.dir\minimum_spanning_tree.cpp.obj -c "D:\Long\The University of Technology\Graph\minimum_spanning_tree.cpp"

CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.i"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Long\The University of Technology\Graph\minimum_spanning_tree.cpp" > CMakeFiles\Graph.dir\minimum_spanning_tree.cpp.i

CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.s"
	"D:\Long\Program files\msys2\mingw64\bin\c++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Long\The University of Technology\Graph\minimum_spanning_tree.cpp" -o CMakeFiles\Graph.dir\minimum_spanning_tree.cpp.s

# Object files for target Graph
Graph_OBJECTS = \
"CMakeFiles/Graph.dir/main.cpp.obj" \
"CMakeFiles/Graph.dir/shortest_path.cpp.obj" \
"CMakeFiles/Graph.dir/functions.cpp.obj" \
"CMakeFiles/Graph.dir/traverse.cpp.obj" \
"CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj"

# External object files for target Graph
Graph_EXTERNAL_OBJECTS =

Graph.exe: CMakeFiles/Graph.dir/main.cpp.obj
Graph.exe: CMakeFiles/Graph.dir/shortest_path.cpp.obj
Graph.exe: CMakeFiles/Graph.dir/functions.cpp.obj
Graph.exe: CMakeFiles/Graph.dir/traverse.cpp.obj
Graph.exe: CMakeFiles/Graph.dir/minimum_spanning_tree.cpp.obj
Graph.exe: CMakeFiles/Graph.dir/build.make
Graph.exe: CMakeFiles/Graph.dir/linkLibs.rsp
Graph.exe: CMakeFiles/Graph.dir/objects1.rsp
Graph.exe: CMakeFiles/Graph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Graph.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Graph.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Graph.dir/build: Graph.exe
.PHONY : CMakeFiles/Graph.dir/build

CMakeFiles/Graph.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Graph.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Graph.dir/clean

CMakeFiles/Graph.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Long\The University of Technology\Graph" "D:\Long\The University of Technology\Graph" "D:\Long\The University of Technology\Graph\cmake-build-debug" "D:\Long\The University of Technology\Graph\cmake-build-debug" "D:\Long\The University of Technology\Graph\cmake-build-debug\CMakeFiles\Graph.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Graph.dir/depend

