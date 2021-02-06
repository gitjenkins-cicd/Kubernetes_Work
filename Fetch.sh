for i in `cat word.csv`
do
res=`grep -o ''$i'=[^=]*' test |awk -F '/' '{print $1}'|grep -oP '"\K[^"\047]+(?=["\047])'|paste -s -d ','|tr -s ','`
echo $res>>result.csv
echo $i,$res
done
for i in 1 2 ; do cat result.csv | cut -d',' -f$i | paste -s -d','>>Finalresult.csv ; done
sed -i '/^$/d' Finalresult.csv
