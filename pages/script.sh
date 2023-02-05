#!/usr/bin/bash
read NAME
TAG=$(echo $NAME | sed -e 's/\(.*\)/\L\1/' -e 's/ /-/g')
cp template.md $TAG.md
sed -i "s/CategoryName/$NAME/g" $TAG.md 
sed -i "s/categorytag/$TAG/g" $TAG.md 
sed -i "s/categorylink/$TAG/g" $TAG.md 

