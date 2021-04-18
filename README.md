# random screensaver quotes from Pride and Prejudice

## thought process

1. figure out how to alter screensaver messages with `defaults -currentHost read com.apple.ScreenSaver.Computer-Name`
2. google "pride and prejudice api"
3. find https://developers.google.com/books/docs/v1/using#download-format
4. run 
```commandline
curl https://www.googleapis.com/books/v1/volumes?q=pride+prejudice&download=epub > pp.json
```
to get all of google's copies of Pride&Prejudice 
5. find an available epub for download
```commandline
cat pp.json | jq -r '.items[] | .accessInfo'
```
6. Install and run epy-reader to convert .epub to .txt
```commandline
epy Pride_and_Prejudice.epub
epy -d > pp.txt
```
7. write script. Test by running
```commandline
/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine
```
8. Add to `~/.zshrc`
```commandline
echo "$(pwd)/randomScreenSaverMessage.sh >> ~/.zshrc" && source ~/.zshrc
```
and reload terminal to test