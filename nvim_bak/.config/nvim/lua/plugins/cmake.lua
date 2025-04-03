return {
  {
      "Civitasv/cmake-tools.nvim",
      ft = {"cpp", "c", "cmake"},
      opts = {
          cmake_command = "cmake", -- Path to CMake command
          cmake_build_directory = "build", -- Build directory
          cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
          cmake_build_options = {"-j24"},
      },
  },
}
