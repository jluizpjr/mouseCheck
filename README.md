# mouseCheck
MacOS tool to report when Magic Mouse battery is low

This script uses MacOS' `pmset` command to check for an Apple Magic Mouse battery being low, and sends a notification if it is. It runs as a cron job every 5 minutes by default. 

## Installation

To use this script, you'll need to have the following installed:

* bash
* pmset
* terminal-notifier (optional)

Once you have those installed, download the `courseCheck.sh` file and save it to your computer. Then open your 
terminal and navigate to the directory where you 
saved the file. You can run the script by typing `./courseCheck.sh`. 

## Usage

The script will check for a Magic Mouse battery being low every 5 minutes by default. If the battery is low, it 
will send a notification to let you know. The 
notification title will be "Magic Mouse Low Battery" and the message will indicate which mouse(s) have a low 
battery. 

You can customize the interval between checks by editing the `CRON_MIN` variable in the script. For example, if 
you want to check every 10 minutes, change it to:
```
CRON_MIN="*/10"
```

