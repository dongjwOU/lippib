#!/bin/bash
# Landsat Time Series Preprocessing 
# Step 4b
# Rename All Images, Change LXX to LND
# One input argument sets the input folder
# By Chris Holden
# Modified by Xiaojing Tang

# check if input directory exist
if [ ! -d $1 ]; then
    echo "Error - $1 is not a directory"
fi

# move to input directory
cd $1

# deal with LT4
echo "Processing LT4s"

# rename files
for fullname in $(find ./ -name '*_LT4*' -type f); do
    dname=$(dirname $fullname)
    fname=$(basename $fullname)
    newn=$dname/LND${fname:11}
    echo $newn
    mv $fullname $newn
done

# rename folders
for fullname in $(find ./ -name '*_LT4*'); do
    dname=$(dirname $fullname)
    fname=$(basename $fullname)
    newn=$dname/LND${fname:11}
    echo $newn
    mv $fullname $newn
done

# deal with LT5
echo "Processing LT5s"

# rename files
for fullname in $(find ./ -name '*_LT5*' -type f); do
    dname=$(dirname $fullname)
    fname=$(basename $fullname)
    newn=$dname/LND${fname:11}
    echo $newn
    mv $fullname $newn
done

# rename folders
for fullname in $(find ./ -name '*_LT5*'); do
    dname=$(dirname $fullname)
    fname=$(basename $fullname)
    newn=$dname/LND${fname:11}
    echo $newn
    mv $fullname $newn
done

# deal with LE7
echo "Processing LE7s"

# rename files
for fullname in $(find ./ -name '*_LE7*' -type f); do
    dname=$(dirname $fullname)
    fname=$(basename $fullname)
    newn=$dname/LND${fname:11}
    echo $newn
    mv $fullname $newn
done

# rename folders
for fullname in $(find ./ -name '*_LE7*'); do
    dname=$(dirname $fullname)
    fname=$(basename $fullname)
    newn=$dname/LND${fname:11}
    echo $newn
    mv $fullname $newn
done

echo "done!"

# done
