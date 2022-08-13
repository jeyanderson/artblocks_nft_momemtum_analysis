#!/bin/bash
sed -i '' '/reverted/d' "./$3.csv"
sed -i '' '/Error/d' "./$3.csv"
sed -i '' '/Auction Details/d' "./$3.csv"
sed -i '' "/$1/d" "./$3.csv"
sed -i '' "/$2/d" "./$3.csv"
awk 'BEGIN{i=1} /.*/{printf "%d,% s\n",i,$0; i++}' "./$3.csv" > output.csv
sed 's/....$//' < ./output.csv > ./output_temp.csv
sed -i '' 's/Meth/Method"/g' ./output_temp.csv
sed -i '' 's/1,"Tx/"ID","Tx/g' ./output_temp.csv
rm -rf output.csv
mv output_temp.csv "$3_output.csv"
sed -i '' "s/inputfile/$3_output.csv/g" ./python_csv_visualiser.ipynb