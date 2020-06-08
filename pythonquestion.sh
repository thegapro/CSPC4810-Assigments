#!/usr/bin/env python3

import pandas as pd
df = pd.read_csv('2007.csv')

delay = df[['ArrDelay']][df['Origin'] == 'SFO'].head(3)
print("a, The first 3 of the arrival delay for the flights that depart from SFO are: \n",delay)

top = pd.DataFrame(df['Dest'].value_counts().head(3))
top = top.reset_index()
top.columns = ['Dest','Counts']
print("b, The top 3 destination airports are: \n",top)


