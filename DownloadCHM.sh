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
b='/lidar/geotiff/'
c='_CHM.tar.gz'
web="${a}${line}${b}${line}${c}"
echo "${web}"
wget -c ${web}
done < "$input"



###lidar tile boundary
#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20171202_FIA1/lidar/shp/tiles/FL_20171202_FIA1_tiles_shp.tar.gz


#lidar data
#G-LiHT\FL_20170328_Harney_River
#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20170328_Harney_River/lidar/las/
#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20171202_Harney_River/lidar/las/
#change of maps
#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20171205_FIA8/lidar/geotiff/change_maps/
#https://glihtdata.gsfc.nasa.gov/files/tmp/4David/FL_20200311_TTI_1/lidar/geotiff/change_maps/

#chm models

#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20170326_FIA1/lidar/geotiff/FL_20170326_FIA1_CHM.tar.gz
