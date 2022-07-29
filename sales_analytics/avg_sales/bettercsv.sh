#!/bin/bash
sed -i '' 's/./ /11' $1
sed -i '' 's/./"2/1' $1
sed -i '' 's/./"/21' $1
sed -i '' 's/.//22' $1
sed -i '' 's/.//22' $1
sed -i '' 's/.//22' $1
sed -i '' 's/.//22' $1
sed -i '' 's/.//22' $1
sed -i '' "1 s/.*/block_time,project_addresss,eth_price,usd_price,link,platform,seller,buyer/" $1
