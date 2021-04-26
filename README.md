# random screensaver quotes from Pride and Prejudice
To create a cronjob to change the screensaver message every hour:

```commandline
touch /var/log/screensaver_crontab_output.log
chmod 666 /var/log/screensaver_crontab_output.log

crontab -e
0 * * * *  $PROJECT_DIRECTORY/pride-and-prejudice-screensaver/randomScreenSaverMessage.sh >> /var/log/screensaver_crontab_output.log >/dev/null 2>&1
```

To start screensaver from the commandline: 

```commandline
/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine
```



