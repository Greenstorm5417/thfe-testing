package("thfe")
  set_homepage("https://github.com/tfhe/tfhe")
  set_license("Apache-2.0")
  set_description("TFHE: Fast Fully Homomorphic Encryption Library over the Torus")

  add_urls("https://github.com/tfhe/tfhe.git")

  add_versions("12.10.2024", "9373b5d8a5b022ca5b4e112ae1c2440bc18e160c")

  add_configs("shared", {description = "Build shared libraries", default = true, type = "boolean", readonly = true})
  add_configs("fftw", {description = "Add libtfhe-fftw for fast FFT computations", default = true, type = "boolean"})
  add_configs("nayuki_portable", {description = "Add libtfhe-nayuki-portable using the fast C version of nayuki for FFT computations", default = false, type = "boolean"})
  add_configs("nayuki_avx", {description = "Add libtfhe-spqlios-avx using tfhe's dedicated avx assembly version for FFT computations", default = false, type = "boolean"})
  add_configs("spqlios_avx", {description = "Add libtfhe-spqlios-avx using tfhe's dedicated avx assembly version for FFT computations", default = false, type = "boolean"})
  add_configs("spqlios_fma", {description = "Add libtfhe-spqlios-fma using tfhe's dedicated fma assembly version for FFT computations", default = false, type = "boolean"})

  add_deps("cmake")

  on_load(function(package)
    if package:config("fftw") then
      package:add("deps", "fftw", {configs = {precisions = {"double"}}})
    end
  end)

  on_install(function(package)
    os.cd("src")

    local configs = {
          "-DCMAKE_BUILD_TYPE=" .. (package:is_debug() and "Debug" or "Release"),
          "-DENABLE_TESTS=off",
          "-DENABLE_FFTW=" .. (package:config("fftw") and "ON" or "OFF"),
          "-DENABLE_NAYUKI_PORTABLE=" .. (package:config("nayuki_portable") and "ON" or "OFF"),
          "-DENABLE_NAYUKI_AVX=" .. (package:config("nayuki_avx") and "ON" or "OFF"),
          "-DENABLE_SPQLIOS_AVX=" .. (package:config("spqlios_avx") and "ON" or "OFF"),
          "-DENABLE_SPQLIOS_FMA=" .. (package:config("spqlios_fma") and "ON" or "OFF"),
    }

    import("package.tools.cmake").install(package, configs)
  end)
