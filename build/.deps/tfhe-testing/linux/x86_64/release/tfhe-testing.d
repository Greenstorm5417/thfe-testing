{
    files = {
        "build/.objs/tfhe-testing/linux/x86_64/release/src/main.cpp.o"
    },
    values = {
        "/nix/store/adcz0m6qq2flmshdf0zz2xwjr5zbq1gr-gcc-wrapper-15.3.0/bin/g++",
        {
            "-m64",
            "-L/home/green/.xmake/packages/t/thfe/12.10.2024/ea4ac126706f4bdbadd09de08aabb6ce/lib",
            "-L/home/green/.xmake/packages/f/fftw/3.3.10/574291cf12ea4d57bfa3139518f41129/lib",
            "-s",
            "-ltfhe-fftw",
            "-lfftw3_threads",
            "-lfftw3",
            "-lpthread"
        }
    }
}