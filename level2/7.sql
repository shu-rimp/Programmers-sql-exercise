-- 코드를 입력하세요
SELECT
    to_char(datetime, 'HH24'),
    count(animal_id)
FROM
    animal_outs
WHERE
    to_char(datetime, 'HH24') Between 09 AND 20
GROUP BY
    to_char(datetime, 'HH24')
ORDER BY
    to_char(datetime, 'HH24');