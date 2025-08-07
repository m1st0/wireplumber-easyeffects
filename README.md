# EasyEffects Audio Routing (PipeWire / WirePlumber)

This project is licensed under Apache License 2.0. See the [LICENSE.txt](LICENSE.txt) file for details.
If you find this project useful and would like to support its development, consider donating via PayPal or Venmo:
[PayPal](https://www.paypal.com/paypalme/m1st0).
[Venmo](https://venmo.com/code?user_id=3319592654995456106&created=1753280522)

© 2025 Maulik Mistry

This script configures WirePlumber to route all audio output streams (`media.class = "Stream/Output/Audio"`) through the EasyEffects sink. This allows global audio processing without setting EasyEffects as the system default sink.

## Why

EasyEffects recommends not being set as the default audio sink. However, this can make routing audio from every app manually tedious. This script ensures all output audio automatically flows through EasyEffects.

## Install

1. Copy `99-route-to-easyeffects.lua` to the WirePlumber configuration directory:

    ```bash
    sudo mkdir -p /etc/wireplumber/main.lua.d/
    sudo cp 99-route-to-easyeffects.lua /etc/wireplumber/main.lua.d/
    ```

2. Restart WirePlumber since it runs at the user level through systemd:

    ```
    systemctl --user restart wireplumber
    ```

3. Make sure EasyEffects is running and has created its virtual sink such as with KDE's volume controls.

## Notes

- This affects all output audio streams, including Flatpak and Snap apps.
- Microphone and input streams are not affected.
- If EasyEffects is not running, audio may fail to route.
