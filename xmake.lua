add_rules("mode.debug", "mode.release")
add_rules("plugin.compile_commands.autoupdate")

add_repositories("overrides overrides")

add_requires("tfhe", { configs = { fftw = true } })

target("tfhe-testing")
    add_packages("tfhe")
    set_kind("binary")
    add_files("src/*.cpp")
