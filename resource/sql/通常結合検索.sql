explain analyze SELECT
	"a_400_通常".user_id, 
	"a_400_通常"."スキル" AS "a内容", 
	"b_270_通常".page_title AS "b内容", 
	"c_400_通常".page_title AS "c内容", 
	"d_180_通常".page_title AS "d内容"
FROM
	"a_400_通常"
	LEFT JOIN
	"b_270_通常"
	ON 
		"a_400_通常".user_id = "b_270_通常".user_id
	LEFT JOIN
	"c_400_通常"
	ON 
		"a_400_通常".user_id = "c_400_通常".user_id
	LEFT JOIN
	"d_180_通常"
	ON 
		"a_400_通常".user_id = "d_180_通常".user_id
WHERE
	"a_400_通常"."スキル" LIKE '%箱根%' or
	"b_270_通常".page_title LIKE '%東京%' or
	"c_400_通常".page_title LIKE '%王子%'
	
	---------------------------- and 
	explain analyze SELECT
	"a_400_通常".user_id, 
	"a_400_通常"."スキル" AS "a内容", 
	"b_270_通常".page_title AS "b内容", 
	"c_400_通常".page_title AS "c内容", 
	"d_180_通常".page_title AS "d内容"
FROM
	"a_400_通常"
	LEFT JOIN
	"b_270_通常"
	ON 
		"a_400_通常".user_id = "b_270_通常".user_id
	LEFT JOIN
	"c_400_通常"
	ON 
		"a_400_通常".user_id = "c_400_通常".user_id
	LEFT JOIN
	"d_180_通常"
	ON 
		"a_400_通常".user_id = "d_180_通常".user_id
WHERE
	"a_400_通常"."スキル" LIKE '%箱根%' and
	"b_270_通常".page_title LIKE '%東京%' and
	"c_400_通常".page_title LIKE '%王子%'
	
	