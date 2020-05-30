# PiDashCam

# SD card Preparation
Create SD using offical `Raspberry Pi Imager`, choose `light` distribution.
Then mount the `boot` partition and follow the steps

## Enable SSH
`touch /Volumes/boot/ssh`

## Setup WiFi
`touch /Volumes/boot/wpa_supplicant.conf`

```
country=<two letter country code i.e. UK>
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="NETWORK-NAME"
    psk="NETWORK-PASSWORD"
}
```

## Before you run the first time

```
$ sudo parted /dev/sdb resizepart 2 20G
$ sudo resize2fs /dev/sdb2 20G
```

Make sure WiFi works:

```
$> ping raspberrypi.local
$> ssh pi@raspberrypi.local
```
