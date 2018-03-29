#! /bin/bash
# Script for parsing a file full of copier IDs.
# For each ID append the url given as the second argument
# and cut out the black and white counts from that url.
# Output the copier ID and its corrosponding counts to a file "couts.txt"

echo "Reading from " $1
echo -e $1 '\n'$(date) '\n'> counts.txt
echo "--------------------------------"
while read extension ; do
	url=$(printf $extension.$2)
	wget --tries=1 $(echo $url) -O temp
	BWline=$(grep -n "Black &amp; White" temp | cut -d ':' -f 1 | head -n 1)
	COLline=$(grep -n "Full Color" temp | cut -d ':' -f 1 | head -n 1)
	bwnum=$(($BWline+ 1))
	colnum=$(($COLline+ 1))
	BWcount=$(sed -n $(echo $bwnum)p temp | cut -d '>' -f 2 | cut -d '<' -f 1)
	COLcount=$(sed -n $(echo $colnum)p temp | cut -d '>' -f 2 | cut -d '<' -f 1)
	echo -e $id '\n' l_ BW: $BWcount, Col: $COLcount '\n' >> counts.txt
done <$1

