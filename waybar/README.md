# Kortbar - Waybar Theme

Custom waybar configuration based on [HANCORE-linux/waybar-themes](https://github.com/HANCORE-linux/waybar-themes) V1.3.

## Changes from original

- Removed hardcoded width for multi-monitor autoscaling
- Fixed `persistent-workspaces` to share workspaces across all monitors
- Added weather module using [waybar-weather](https://crates.io/crates/waybar-weather)

## Dependencies

- [waybar-weather](https://crates.io/crates/waybar-weather) - `cargo install waybar-weather`
- [waybar-module-pacman-updates](https://aur.archlinux.org/packages/waybar-module-pacman-updates-git) (optional)

## Weather Setup

The weather module requires an [OpenWeatherMap](https://openweathermap.org/api) API key. Edit `config.jsonc` and replace the API key and city in the `custom/weather` section.

## Credits

- Original theme: [HANCORE-linux/waybar-themes](https://github.com/HANCORE-linux/waybar-themes) (V1.3)
- Weather module: [waybar-weather](https://crates.io/crates/waybar-weather)
