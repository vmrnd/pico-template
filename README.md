# Pico Template

## MacOS

```zsh
git submodule add https://github.com/raspberrypi/pico-sdk extern/pico-sdk
git submodule update --init --recursive

git submodule add https://github.com/vmrnd/tinyusb extern/tinyusb
git submodule update --init --recursive
```

```zsh
brew tap ArmMbed/homebrew-formulae
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
cmake -S . -B build -DPICO_PLATFORM=rp2350 -DPICO_BOARD=waveshare_rp2350_usb_a
```

## Full Command

```zsh
/opt/homebrew/bin/cmake -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_C_COMPILER:FILEPATH=/opt/homebrew/bin/arm-none-eabi-gcc -DCMAKE_CXX_COMPILER:FILEPATH=/opt/homebrew/bin/arm-none-eabi-g++ --no-warn-unused-cli -S /Users/vinitmiranda/Documents/GitHub/pico-template -B /Users/vinitmiranda/Documents/GitHub/pico-template/build -G Ninja
```

```zsh
/opt/homebrew/bin/cmake --build /Users/vinitmiranda/Documents/GitHub/pico-template/build --config Debug --target hello_world --
```

## CMakePresets.json

```json
{
  "version": 3,
  "cmakeMinimumRequired": {
    "major": 3,
    "minor": 13,
    "patch": 0
  },
  "configurePresets": [
    {
      "name": "waveshare-debug",
      "hidden": false,
      "generator": "Ninja",
      "binaryDir": "${sourceDir}/build/${presetName}",
      "description": "Debug build for WAVESHARE_RP2350_USB_A",
      "cacheVariables": {
        "PICO_PLATFORM": "rp2350",
        "PICO_BOARD": "waveshare_rp2350_usb_a",
        "CMAKE_BUILD_TYPE": "Debug",
        "CMAKE_EXPORT_COMPILE_COMMANDS": "TRUE",
        "CMAKE_C_COMPILER": "/opt/homebrew/bin/arm-none-eabi-gcc",
        "CMAKE_CXX_COMPILER": "/opt/homebrew/bin/arm-none-eabi-g++"
      }
    }
  ],
  "buildPresets": [
    {
      "name": "waveshare-build",
      "description": "Build hello_world target in Debug mode",
      "displayName": "Waveshare Build",
      "configurePreset": "waveshare-debug",
      "configuration": "Debug",
      "targets": ["hello_world"]
    }
  ]
}
```

```zsh
picotool load build/waveshare-debug/hello_world.uf2
```