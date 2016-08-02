# Connection status logger

My internet connection was up and down constantly, but seemingly never when I call my ISP. So this thing happened.

## Usage

Install [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads), then simply run `vagrant up` in the directory.

Upon startup, the script will begin logging to status.log in the main directory.

## Nitty-gritty

Runs `pingtest.sh` in a screen session as root. To view the interactive shell where the script is being run, `vagrant ssh`, `sudo su`, and `/vagrant/scripts/pingserv console`. The script doesn't log anything to the console, so the viewed screen will likely be blank.

`pingtest.sh` pings Google's main resolver (8.8.8.8) with a timeout of 200ms and reads the resulting status code. This is the script that actually logs the status to file.


### Todo:
- [x] ~~Be sober enough to use upstart correctly~~ (Uses vagrant inline script instead)
- [ ] Build a gui to present the data via http (it can just parse the logfile)
- [ ] Make aforementioned gui pretty (some graphs and crap)
