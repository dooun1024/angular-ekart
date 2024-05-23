-- CREATE TABLE wiki_title_400_b AS TABLE wiki_title_400;

-- b_270_インデクス
-- c_400_インデクス
-- d_180_インデクス

create index wiki_180_index on a_400_インデクス using gin(
永続的識別子 gin_bigm_ops,
巻次又は部編番号 gin_bigm_ops,
出版者 gin_bigm_ops,
出版日 gin_bigm_ops
);

-- index a
create index a_400_インデクス_index on a_400_インデクス using gin(
page_title gin_bigm_ops,
スキル gin_bigm_ops,
職種 gin_bigm_ops,
媒体 gin_bigm_ops
);

-- index b
create index b_270_インデクス_index on b_270_インデクス using gin(
page_title gin_bigm_ops
);

-- index c
create index c_400_インデクス_index on c_400_インデクス using gin(
page_title gin_bigm_ops
);

-- index d
create index d_180_インデクス_index on d_180_インデクス using gin(
page_title gin_bigm_ops
);

