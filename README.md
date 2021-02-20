# Import notes from Google Keep to SimpleNote
Here are some very simple scripts to export your Google Keep notes to SimpleNote  
### Prerequisites : 
* jq (https://stedolan.github.io/jq/)
* sncli (https://github.com/insanum/sncli)
## Export your Keep notes to an archive
You can download the zip file containing all your notes at : 
> https://takeout.google.com/settings/takeout/
## In the archive
* Place the import script that you want in *archiveRoot*/Takeout/Keep

## Setup sncli (if you haven't already)
Enter your credentials in
> vim ~/.snclirc

### Import notes to SimpleNote (very slow because of sncli)
* If you want to import everything in the directory launch
> yes | ./import_dir.sh
 * If you want to import a particular file lauch
> ./import_file.sh file.json

TODO :
* Import lists
* Import timestamps
