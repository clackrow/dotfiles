import os
import datetime
import time


def main():
    os.system("notify-send 'bg changing routine is running'")
    while True:
        hour = datetime.datetime.now().hour
        if hour > 8 and hour < 12:
            os.system("feh --bg-scale ~/.config/i3/morning.png")
        if hour > 12 and hour < 18:
            os.system("feh --bg-scale ~/.config/i3/day.png")
        if hour > 18:
            os.system("feh --bg-scale ~/.config/i3/night.png")
        time.sleep(300)


if __name__ == "__main__":
    main()
