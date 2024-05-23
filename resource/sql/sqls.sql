SELECT count(1) FROM "test_data2"

ALTER TABLE wiki_title_400 ADD COLUMN スキル varchar(1024);
UPDATE wiki_title_400 SET スキル = page_title;

ALTER TABLE wiki_title_400 ADD COLUMN 職種 varchar(1024);
UPDATE wiki_title_400 SET 職種 = page_title;

ALTER TABLE wiki_title_400 ADD COLUMN 媒体 varchar(1024);
UPDATE wiki_title_400 SET 媒体 = page_title;

-- 複製表
CREATE TABLE wiki_title_400_Fast AS TABLE wiki_title_400;

-- index a
select
pg_size_pretty(pg_relation_size('wiki_title_400'))  as table_size,
pg_size_pretty(pg_indexes_size('wiki_title_400'))  as all_index_size,
-- pg_size_pretty(pg_relation_size('wiki_title_400'))  as index_size,
pg_size_pretty(pg_total_relation_size('wiki_title_400'))  as all_size




