return {
  name = "clangd",
  cmd = { "clangd" },
  root_markers = { "compile_flags.txt", ".git" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
}
