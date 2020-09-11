

PATH_TO_VID=$1
PATH_TO_OUT=$2
ffmpeg -i "$PATH_TO_VID" -y -an -q 0 -vf scale="'if(gt(iw,ih),-1,112):if(gt(iw,ih),112,-1)', crop=112:112:exact=1" $2
