# Import notes from Google Keep to SimpleNote
### Prerequisites : 
* jq (https://stedolan.github.io/jq/)
* sncli (https://github.com/insanum/sncli)
## Dump your Keep notes
You can download the zip file containing all your notes at : 
> https://takeout.google.com/settings/takeout/
## In the archive
* Place the `import.sh` file in *archiveRoot*/Takeout/Keep

## Setup sncli (if you haven't already)
Enter your credentials in
> vim ~/.snclirc

### Script (very slow, ask sncli)
* If you want to import everything launch

> yes | ./import.sh
 
