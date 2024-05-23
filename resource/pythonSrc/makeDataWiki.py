import pandas as pd
from sqlalchemy import create_engine
#data = pd.read_excel("dataset_202305_t_internet_02.xlsx",header = 0)
data = pd.read_csv("datas/jawiki-20240120-all-titles.txt",header = 0, sep='\t')
#data = pd.read_csv("datas/30line.csv",header = 0, sep='\t')
print(data)

# exit()
# データベースの接続情報
postgres_config = {
    'user': 'postgres',
    'pass': 'postgres',
    'host': 'database-1.c5e6ic0i6lub.ap-southeast-2.rds.amazonaws.com',
    'port': '5432',
    'db':   'postgres'
}
# PostgreSQLへの接続設定
engine = create_engine('postgresql://{user}:{pass}@{host}:{port}/{db}'.format(**postgres_config))

# PostgreSQLへの書き込み
#data.to_sql('wiki_title_normal', con=engine, if_exists='append', index=False)
data.to_sql('wiki_title_indexed', con=engine, if_exists='append', index=False)




