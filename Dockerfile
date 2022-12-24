FROM gcc:12.1.0 as playground
LABEL description="Container for building and debugging cpp-projects." 

# install build dependencies 
RUN apt-get update && apt-get install --no-install-recommends -y \
   cmake=3.18.4-2+deb11u1 ninja-build=1.10.1-1 libboost-dev=1.74.0.3 \
   gdb=10.1-1.7 \
   && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN { \
   echo 'python'; \
   echo 'import sys'; \
   echo 'sys.path.insert(0,' \''/usr/share/gcc/python'\'')'; \
   echo 'from libstdcxx.v6.printers import register_libstdcxx_printers'; \
   echo 'register_libstdcxx_printers (None)'; \
   } > ~/.gdbinit