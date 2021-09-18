# random screensaver quotes

## To create a cronjob to change the screensaver message every hour:
```commandline
sudo touch /var/log/crontab_output.log
sudo chmod 666 /var/log/crontab_output.log

crontab -e
0 * * * *  <full-path-to>/randomScreenSaverMessage.sh >> /var/log/crontab_output.log 2>&1
```

## To start screensaver from the commandline: 

```commandline
/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine
```

## To find a free text online

search for your book title's name, using "`+`" character for spaces
```commandline
curl https://www.googleapis.com/books/v1/volumes?q=YOUR+FAVE+BOOK&download=epub > your-fave-book-search-results.json
```
to get all of google's copies of your favorite book.

Then find an available epub for download

```commandline
cat your-fave-book-search-results.json | jq -r '.items[] | .accessInfo'
```

Download an available copy.

Install and run epy-reader to convert .epub to .txt

```commandline
epy Your_Favorite_Book.epub
epy -d > fave-book.txt
```

