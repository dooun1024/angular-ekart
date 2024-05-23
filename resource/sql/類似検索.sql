-- 類似度確認
show pg_bigm.similarity_limit;

-- 類似度設定
show pg_bigm.similarity_limit;

set pg_bigm.similarity_limit TO 0.3;
select page_title from a_400_インデクス where page_title =% '_食品_' limit 1000;
select count(1) from a_400_インデクス where page_title =% '_食品_'

