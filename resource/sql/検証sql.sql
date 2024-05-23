
-- a_400_通常
-- b_270_通常
-- c_400_通常
-- d_180_通常

-- a_400_インデクス
-- b_270_インデクス
-- c_400_インデクス
-- d_180_インデクス

select * from a_400_インデクス where length(page_title)>70 limit 200;

---------------------------------------------------------------------------------------------------
公立
教育
学校
法律

explain analyze select * from a_400_インデクス where page_title like '%日本%' and スキル like '%東京%';

-- 同一テーブル AND

-- 2件
explain analyze select * from a_400_通常 where page_title like '%日本%' and スキル like '%東京%';
explain analyze select * from a_400_インデクス where page_title like '%日本%' and スキル like '%東京%';

-- 3件
explain analyze select * from a_400_通常 where page_title like '%公立%' and スキル like '%教育%' and 職種 like '%学校%';
explain analyze select * from a_400_インデクス where page_title like '%公立%' and スキル like '%教育%' and 職種 like '%学校%';

-- 4件
explain analyze select * from a_400_通常 where page_title like '%公立%' and スキル like '%教育%' and 職種 like '%学校%' and 媒体 like '%法律%';
explain analyze select * from a_400_インデクス where page_title like '%公立%' and スキル like '%教育%' and 職種 like '%学校%' and 媒体 like '%法律%';

-- 別テーブル AND

SELECT
	"a_400_インデクス".user_id, 
	"a_400_インデクス"."スキル" AS "a内容", 
	"b_270_インデクス".page_title AS "b内容", 
	"c_400_インデクス".page_title AS "c内容", 
	"d_180_インデクス".page_title AS "d内容"
FROM
	"a_400_インデクス"
	LEFT JOIN
	"b_270_インデクス"
	ON 
		"a_400_インデクス".user_id = "b_270_インデクス".user_id
	LEFT JOIN
	"c_400_インデクス"
	ON 
		"a_400_インデクス".user_id = "c_400_インデクス".user_id
	LEFT JOIN
	"d_180_インデクス"
	ON 
		"a_400_インデクス".user_id = "d_180_インデクス".user_id
WHERE
	"b_270_インデクス"."user_id" > 290000
	limit 1000

