# Pico Template

## Submodules

```zsh
git submodule add https://github.com/raspberrypi/pico-sdk extern/pico-sdk
git submodule add https://github.com/ThrowTheSwitch/Unity.git extern/unity_cmake/unity
git submodule update --init --recursive
```

## Build

```zsh
cmake --preset debug
cmake --build --preset debug
```

## Flash

```zsh
picotool load build/waveshare-debug/hello_world.uf2
```

## Simulator

Edit wokwi.toml and diagram.json to match your project structure.

In VSCode, open Command Palette with
Command+Shift+P -> "Wokwi: Start Simulator"