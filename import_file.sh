#!/bin/bash

echo $1 is being processed...
cat $1 |  jq '{"content": (.title + "\n" +.textContent), "tags" : [.labels?[]?.name], "deleted":.isTrashed?}' | sncli import -
if [ $? -eq 0 ]
then
    echo Successfully imported $1
else 
    echo An error occured
fi

