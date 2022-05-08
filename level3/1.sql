-- 코드를 입력하세요
SELECT
    o.animal_id,
    o.name
FROM
    animal_ins i,
    animal_outs o
WHERE
    o.animal_id = i.animal_id (+)
    AND i.animal_id IS NULL
ORDER BY
    animal_id;