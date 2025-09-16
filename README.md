# Pico Template

## MacOS

```zsh
git submodule add https://github.com/raspberrypi/pico-sdk extern/pico-sdk
git submodule update --init --recursive
```

```zsh
brew install --cask gcc-arm-embedded
brew install cmake
brew install ninja
brew install picotool
```

```zsh
cmake -S . -B build
cmake --build build --target hello_world
```

# TODO

Add the board definition to the cmake command

```zsh
cmake -S . -B build -DPICO_BOARD=waveshare_rp2350_usb_a
```