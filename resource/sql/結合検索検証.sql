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
	"a_400_インデクス"."スキル" LIKE '%それ%' or
	"b_270_インデクス".page_title LIKE '%SHIFT%' or
	"c_400_インデクス".page_title LIKE '%それ%'
	
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
	"a_400_インデクス"."スキル" LIKE '%それ%' and
	"b_270_インデクス".page_title LIKE '%SHIFT%' and
	"c_400_インデクス".page_title LIKE '%それ%'