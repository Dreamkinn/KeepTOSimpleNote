#!/bin/bash

root=$(pwd)/parsed
mkdir $root

for filename in *.json; do
    read -r -p "Do you want to import $filename ? [y/N] " response
    case "$response" in
    [yY][eE][sS][oO]|[yY]) 
        cat $filename |  jq '{"content": (.title + "\n" +.textContent), "tags" : [.labels?[]?.name], "deleted":.isTrashed?}' > $root/parsed_$filename
        if [ $? -eq 0 ]
        then
            echo Successfully parsed $filename
        fi
        ;;
    *)
        
        ;;
    esac
done

