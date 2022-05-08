-- 코드를 입력하세요
SELECT
    i.animal_id,
    i.animal_type,
    i.name
FROM
    animal_ins i,
    animal_outs o
WHERE
    i.animal_id = o.animal_id
    AND i.sex_upon_intake LIKE 'Intact%'
    AND (o.sex_upon_outcome LIKE 'Neutered%'
        OR o.sex_upon_outcome LIKE 'Spayed%')
ORDER BY
    i.animal_id;