#Script to delete files less than particular size.
#!/bin/bash

read -p "Enter the file size with unit c or k or M" size # for eg. 1024c(c for bytes)

find /home/adii/Desktop  -size -$size  -print

find /home/adii/Desktop  -size -$size -delete
   
echo "FILES DELETED"

