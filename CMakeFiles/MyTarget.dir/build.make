# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.28.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.28.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/alexkim/Developer/regex to DFA"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/alexkim/Developer/regex to DFA"

# Include any dependencies generated for this target.
include CMakeFiles/MyTarget.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyTarget.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyTarget.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyTarget.dir/flags.make

CMakeFiles/MyTarget.dir/src/ast.cpp.o: CMakeFiles/MyTarget.dir/flags.make
CMakeFiles/MyTarget.dir/src/ast.cpp.o: src/ast.cpp
CMakeFiles/MyTarget.dir/src/ast.cpp.o: CMakeFiles/MyTarget.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/alexkim/Developer/regex to DFA/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyTarget.dir/src/ast.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTarget.dir/src/ast.cpp.o -MF CMakeFiles/MyTarget.dir/src/ast.cpp.o.d -o CMakeFiles/MyTarget.dir/src/ast.cpp.o -c "/Users/alexkim/Developer/regex to DFA/src/ast.cpp"

CMakeFiles/MyTarget.dir/src/ast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTarget.dir/src/ast.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/alexkim/Developer/regex to DFA/src/ast.cpp" > CMakeFiles/MyTarget.dir/src/ast.cpp.i

CMakeFiles/MyTarget.dir/src/ast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTarget.dir/src/ast.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/alexkim/Developer/regex to DFA/src/ast.cpp" -o CMakeFiles/MyTarget.dir/src/ast.cpp.s

CMakeFiles/MyTarget.dir/src/iterator.cpp.o: CMakeFiles/MyTarget.dir/flags.make
CMakeFiles/MyTarget.dir/src/iterator.cpp.o: src/iterator.cpp
CMakeFiles/MyTarget.dir/src/iterator.cpp.o: CMakeFiles/MyTarget.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/alexkim/Developer/regex to DFA/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyTarget.dir/src/iterator.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTarget.dir/src/iterator.cpp.o -MF CMakeFiles/MyTarget.dir/src/iterator.cpp.o.d -o CMakeFiles/MyTarget.dir/src/iterator.cpp.o -c "/Users/alexkim/Developer/regex to DFA/src/iterator.cpp"

CMakeFiles/MyTarget.dir/src/iterator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTarget.dir/src/iterator.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/alexkim/Developer/regex to DFA/src/iterator.cpp" > CMakeFiles/MyTarget.dir/src/iterator.cpp.i

CMakeFiles/MyTarget.dir/src/iterator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTarget.dir/src/iterator.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/alexkim/Developer/regex to DFA/src/iterator.cpp" -o CMakeFiles/MyTarget.dir/src/iterator.cpp.s

CMakeFiles/MyTarget.dir/src/main.cpp.o: CMakeFiles/MyTarget.dir/flags.make
CMakeFiles/MyTarget.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/MyTarget.dir/src/main.cpp.o: CMakeFiles/MyTarget.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/alexkim/Developer/regex to DFA/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MyTarget.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTarget.dir/src/main.cpp.o -MF CMakeFiles/MyTarget.dir/src/main.cpp.o.d -o CMakeFiles/MyTarget.dir/src/main.cpp.o -c "/Users/alexkim/Developer/regex to DFA/src/main.cpp"

CMakeFiles/MyTarget.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTarget.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/alexkim/Developer/regex to DFA/src/main.cpp" > CMakeFiles/MyTarget.dir/src/main.cpp.i

CMakeFiles/MyTarget.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTarget.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/alexkim/Developer/regex to DFA/src/main.cpp" -o CMakeFiles/MyTarget.dir/src/main.cpp.s

CMakeFiles/MyTarget.dir/src/scanner.cpp.o: CMakeFiles/MyTarget.dir/flags.make
CMakeFiles/MyTarget.dir/src/scanner.cpp.o: src/scanner.cpp
CMakeFiles/MyTarget.dir/src/scanner.cpp.o: CMakeFiles/MyTarget.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/alexkim/Developer/regex to DFA/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MyTarget.dir/src/scanner.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTarget.dir/src/scanner.cpp.o -MF CMakeFiles/MyTarget.dir/src/scanner.cpp.o.d -o CMakeFiles/MyTarget.dir/src/scanner.cpp.o -c "/Users/alexkim/Developer/regex to DFA/src/scanner.cpp"

CMakeFiles/MyTarget.dir/src/scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTarget.dir/src/scanner.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/alexkim/Developer/regex to DFA/src/scanner.cpp" > CMakeFiles/MyTarget.dir/src/scanner.cpp.i

CMakeFiles/MyTarget.dir/src/scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTarget.dir/src/scanner.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/alexkim/Developer/regex to DFA/src/scanner.cpp" -o CMakeFiles/MyTarget.dir/src/scanner.cpp.s

# Object files for target MyTarget
MyTarget_OBJECTS = \
"CMakeFiles/MyTarget.dir/src/ast.cpp.o" \
"CMakeFiles/MyTarget.dir/src/iterator.cpp.o" \
"CMakeFiles/MyTarget.dir/src/main.cpp.o" \
"CMakeFiles/MyTarget.dir/src/scanner.cpp.o"

# External object files for target MyTarget
MyTarget_EXTERNAL_OBJECTS =

MyTarget: CMakeFiles/MyTarget.dir/src/ast.cpp.o
MyTarget: CMakeFiles/MyTarget.dir/src/iterator.cpp.o
MyTarget: CMakeFiles/MyTarget.dir/src/main.cpp.o
MyTarget: CMakeFiles/MyTarget.dir/src/scanner.cpp.o
MyTarget: CMakeFiles/MyTarget.dir/build.make
MyTarget: CMakeFiles/MyTarget.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/alexkim/Developer/regex to DFA/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable MyTarget"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyTarget.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyTarget.dir/build: MyTarget
.PHONY : CMakeFiles/MyTarget.dir/build

CMakeFiles/MyTarget.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyTarget.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyTarget.dir/clean

CMakeFiles/MyTarget.dir/depend:
	cd "/Users/alexkim/Developer/regex to DFA" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/alexkim/Developer/regex to DFA" "/Users/alexkim/Developer/regex to DFA" "/Users/alexkim/Developer/regex to DFA" "/Users/alexkim/Developer/regex to DFA" "/Users/alexkim/Developer/regex to DFA/CMakeFiles/MyTarget.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/MyTarget.dir/depend
