#!/bin/bash


for filename in *.json; do
    read -r -p "Do you want to import $filename ? [y/N] " response
    case "$response" in
    [yY][eE][sS][oO]|[yY]) 
        echo $filename is being processed...
        cat $filename |  jq '{"content": (.title + "\n" +.textContent), "tags" : [.labels?[]?.name], "deleted":.isTrashed?}' | sncli import -
        if [ $? -eq 0 ]
        then
            echo Successfully imported $filename
        fi
        ;;
    *)
        
        ;;
    esac
done

