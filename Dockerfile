FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    cmake \
    python3 \
    build-essential \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    git \
    g++ \
    ninja-build

RUN rm -rf /var/lib/apt/lists/*

CMD [ "sleep", "infinity" ]