import pandas as pd 

axd= pd.read_csv("data/speeds.csv", index_col="block_fips", dtype={'block_fips':str})

millinocket= pd.read_csv("DC20BLK_CS2301945810_BLK2MS.txt", sep=';', dtype={'FULLCODE':str})

combined_df= millinocket.set_index('FULLCODE')
result= combined_df.join(axd)
print(result)
max = result['max_advertised_download_speed'].dropna().mean()
print(max)