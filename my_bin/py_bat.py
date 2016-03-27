#!/usr/bin/python3
import os
import time

def main():
    while True:
        time.sleep(5)
        battery_file_capacity = open("/sys/class/power_supply/BAT0/capacity")
        battery_file_status = open("/sys/class/power_supply/BAT0/status")
        battery_level = int(battery_file_capacity.read().replace('\n', ''))
        battery_status = battery_file_status.read().replace('\n', '')

        if battery_level > 85 and battery_status == 'Charging':
            os.system("notify-send \'WARNING\' \'UNPLUG THE CHARGER\'")

        if battery_level < 35 and battery_status == 'Discharging':
            os.system("notify-send \'WARNING\' \'PLUG THE CHARGER\'")

if __name__ == "__main__":
    main()
