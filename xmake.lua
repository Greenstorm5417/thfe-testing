add_rules("mode.debug", "mode.release")

add_repositories("overrides overrides")

add_requires("thfe")

target("hello world")
add_packages("thfe")
set_kind("binary")
add_files("src/*.cpp")
