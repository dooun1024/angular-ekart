explain analyze SELECT
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
	"a_400_インデクス"."スキル" LIKE '%箱根%' or
	"b_270_インデクス".page_title LIKE '%東京%' or
	"c_400_インデクス".page_title LIKE '%王子%'
	
		---------------------------- and 
explain analyze SELECT
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
	"a_400_インデクス"."スキル" LIKE '%箱根%' and
	"b_270_インデクス".page_title LIKE '%東京%' and
	"c_400_インデクス".page_title LIKE '%王子%'