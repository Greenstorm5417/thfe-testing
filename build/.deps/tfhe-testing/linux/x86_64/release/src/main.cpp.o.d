{
    depfiles_format = "gcc",
    depfiles = "main.o: src/main.cpp\
",
    files = {
        "src/main.cpp"
    },
    values = {
        "/nix/store/adcz0m6qq2flmshdf0zz2xwjr5zbq1gr-gcc-wrapper-15.3.0/bin/g++",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-O3",
            "-isystem",
            "/home/green/.xmake/packages/t/thfe/12.10.2024/453866dc7b274b6f92574f25615f7a2d/include",
            "-isystem",
            "/home/green/.xmake/packages/f/fftw/3.3.10/574291cf12ea4d57bfa3139518f41129/include",
            "-DNDEBUG"
        }
    }
}