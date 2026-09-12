{
    depfiles_format = "gcc",
    files = {
        "src/main.cpp"
    },
    values = {
        "/usr/bin/g++",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-O3",
            "-DNDEBUG"
        }
    },
    depfiles = "main.o: src/main.cpp\
"
}