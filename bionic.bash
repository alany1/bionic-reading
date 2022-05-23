touch $2
threshold=$3
while read line; do
  linearr=($line)
  size=${#linearr}
  if [ $size = 0 ]
  then
    echo "<br>" >> $2
    echo "<br>" >> $2
  fi
  for i in "${linearr[@]}"; do
    len=${#i}
    cut=$((len/threshold + 1))
    bold=${i:0:cut}
    rest=${i:cut:len-cut}
    echo "<b>$bold</b>$rest" >> $2
  done
done <$1
