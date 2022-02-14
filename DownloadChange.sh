#!/bin/bash

echo "Here is a String" | grep -Po '(?<=(Here )).*(?= String)'
##get project name
wget -O - https://glihtdata.gsfc.nasa.gov/files/G-LiHT/  | grep -Po '(?<=(href=")).*(?=(/">FL))'> filenames.txt

####download
######

input="filenames.txt"
while IFS= read -r line
do
a='https://glihtdata.gsfc.nasa.gov/files/G-LiHT/'
b='/lidar/geotiff/change_maps/'
c='_change_maps.tar.gz'
web="${a}${line}${b}${line}${c}"
echo "${web}"
wget -c ${web}
done < "$input"



#change of maps
#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20171205_FIA8/lidar/geotiff/change_maps/FL_20171205_FIA8_change_maps.tar.gz
#https://glihtdata.gsfc.nasa.gov/files/tmp/4David/FL_20200311_TTI_1/lidar/geotiff/change_maps/

#chm models

#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20170326_FIA1/lidar/geotiff/FL_20170326_FIA1_CHM.tar.gz