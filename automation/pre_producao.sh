#!/bin/bash

echo "------------------------------------------------------"
echo "Preparando os jsps abaixo para ambiente de $1"
echo "------------------------------------------------------"

for file in $(find build/WebContent -name "*.jsp")
do
echo "file=$file"
sed -i 's/<\/head>/<script type="text\/javascript">alert(1);<\/script>\n<\/head>/g' $file
done
