# random screensaver quotes

## todo
file `/Users/c.kelly.iverson/Library/Preferences/ByHost/com.apple.ScreenSaver.Computer-Name.${USER_UUID}.plist` doesn't exist before creating it

## To create a cronjob to change the screensaver message every hour:
**Note**: Don't put the script in `Desktop`, `Documents`, or `Downloads`.

```commandline
$ sudo touch /var/log/crontab.log
$ sudo chmod 666 /var/log/crontab.log
$ crontab -e
```
when the crontab editor opens, paste the following:
```commandline
0 * * * *  <full-path-to>/randomScreenSaverMessage.sh >> /var/log/crontab.log 2>&1
```
and exit the crontab editor with `:wq!`

## To start screensaver from the commandline: 

```commandline
$ /System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine
```

## To find a free text online

search for your book title's name, using "`+`" character for spaces
```commandline
$ curl https://www.googleapis.com/books/v1/volumes?q=YOUR+FAVE+BOOK&download=epub > your-fave-book-search-results.json
```
to get all of google's copies of your favorite book.

Then find an available epub for download

```commandline
$ cat your-fave-book-search-results.json | jq -r '.items[] | .accessInfo'
```

Download an available copy.

Install and run epy-reader to convert .epub to .txt

```commandline
$ epy Your_Favorite_Book.epub
$ epy -d > fave-book.txt
```

