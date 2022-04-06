# Bonfire.Device

WIP for running Bonfire on devices like Raspberry Pi or Grisp2 using Nerves.

## Targets

Applications using Nerves produce images for hardware targets based on the `MIX_TARGET` environment variable. If `MIX_TARGET` is unset, `mix` builds an image that runs on the host (e.g., your laptop). This is useful for executing logic tests, running utilities, and debugging. Other targets are represented by a short name like `rpi3` that maps to a Nerves system image for that platform.

Possible targets currently include: grisp2, rpi, rpi0, rpi2, rpi3, rpi3a, rpi4, bbb, osd32mp1, x86_64.

All of this logic is in the generated `mix.exs` and may be customized. For more information about targets see: https://hexdocs.pm/nerves/targets.html

## Getting Started

To set up your device:
  * `export MIX_TARGET=my_target` or prefix every command with
    `MIX_TARGET=my_target`. For example, `MIX_TARGET=rpi3` or `MIX_TARGET=grisp2`
  * Install dependencies with `mix deps.get`
  * Create firmware with `mix firmware`
  * Burn to an SD card with `mix burn` (for Grisp2, follow these instructions instead: https://github.com/fhunleth/nerves_system_grisp2#boot-notes)
  * Plug in your device
  * Connect via SSH or Serial: `picocom /dev/tty.usbserial-011781 --baud 115200`
  * Connect the device to WiFi: `VintageNetWiFi.quick_configure("my_ssid", "my_password")` 
  * Open `http://bonfire.local` in your browser

## Upgrades

  * `export MIX_TARGET=my_target` or prefix every command with
    `MIX_TARGET=my_target`
  * Plug in your device
  * Create updated firmware with `mix firmware`
  * Deploy with `mix upload` 

## Debugging

* View WiFi connection status and details with `VintageNet.info` in iex
* View logs on the device by running `RingLogger.next` in iex

## Learn more

  * Official docs: https://hexdocs.pm/nerves/getting-started.html
  * Official website: https://nerves-project.org/
  * Forum: https://elixirforum.com/c/nerves-forum
  * Discussion Slack elixir-lang #nerves ([Invite](https://elixir-slackin.herokuapp.com/))
  * Source: https://github.com/nerves-project/nerves
