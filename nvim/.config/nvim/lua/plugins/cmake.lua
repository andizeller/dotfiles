return {
  {
      "Civitasv/cmake-tools.nvim",
      ft = {"cpp", "c", "cmake"},
      opts = {
          cmake_command = "/home/nt0x/agco/dcu/host/latest/sdk/bin/cmake", -- Path to CMake command
          cmake_build_directory = ".build", -- Build directory
          cmake_generate_options = { "-DCMAKE_BUILD_TYPE=Debug","-DCMAKE_TOOLCHAIN_FILE=/home/nt0x/agco/dcu/host/latest/sdk/share/buildroot/toolchainfile.cmake","-DPYTHON3_INTERPRETER=/usr/bin/python3","-DCMAKE_INSTALL_PREFIX=/opt","-DCMAKE_EXPORT_COMPILE_COMMANDS=ON","-Dcore_workstation=ON"},
          cmake_build_options = {"-j24"},
          cmake_use_preset = false,
          cmake_soft_link_compile_commands = true,
      },
  },
}
