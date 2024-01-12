#!/bin/bash 
# Replace NJU specified items with yours 
# usage: ./migrate.sh School's_chinese_name shortname_in_lower_caes shortname_in_upper_caes

replace() {
  find * -name "*.typ" -exec sed 's/'"$1"'/'"$2"'/' -i {} \;
}

cp ./migrate/name.svg ./nju-thesis/assets/vi/u-name.svg
# I don't know why they need purple ones, I just simply fake them here
cp ./migrate/name.svg ./nju-thesis/assets/vi/u-name-purple.svg
cp ./migrate/emblem.svg ./nju-thesis/assets/vi/u-emblem.svg
cp ./migrate/emblem.svg ./nju-thesis/assets/vi/u-emblem-purple.svg

NAME=${1:-浙江}
L=${2:-zj}
U=${3:-ZJ}
replace 南京 $NAME
replace nj $L
replace NJ $U

# And there's someting you need to do manually:
# Replace the ADDRESS
# Replace the svg's
# Or you may PR to add them to this sh
