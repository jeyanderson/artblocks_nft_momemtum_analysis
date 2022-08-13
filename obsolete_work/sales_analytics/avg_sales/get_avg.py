import numpy as np
import csv
import pandas as pd
from datetime import datetime

readdata = csv.reader(open('334_sales.csv', 'r'))
data = []

csv_header = next(readdata)

df_sig = pd.read_csv('334_sales.csv', header=None, skiprows=1, names=csv_header)
df_sig['Date'] = df_sig['block_time'].map(lambda x: datetime.strptime(str(x), '%Y-%m-%d %H:%M:%S'))
endDate = datetime(2022,7,13,18,0,0)
df_new=df_sig.loc[(df_sig['Date'] <= endDate)]

for row in df_new['eth_price']:
  data.append(row)

data.pop(0) 

q1 = []  

for i in range(len(data)):
  q1.append(float(data[i]))

print ('sale price average for h+1 :    ', (np.mean(q1)))