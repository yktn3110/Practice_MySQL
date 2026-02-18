
/* create view */
CREATE VIEW prefecture_user_counts(name, count) AS
SELECT
    p.name NAME,
    COUNT(*) COUNT
FROM
    users u
INNER JOIN prefectures p
on u.prefecture_id = p.id
GROUP BY
    u.prefecture_id
-- order byはviewの定義には入れられない

/* view */
SELECT * FROM prefecture_user_counts;

/* delete view */
--DROP VIEW IF EXISTS prefecture_user_counts;
DROP VIEW prefecture_user_counts;
