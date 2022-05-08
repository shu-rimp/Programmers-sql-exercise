-- 코드를 입력하세요
SELECT
    *
FROM
    (
        SELECT
            i.name,
            i.datetime
        FROM
            animal_ins i,
            animal_outs o
        WHERE
            i.animal_id = o.animal_id (+)
            AND o.animal_id IS NULL
        ORDER BY
            i.datetime
    )
WHERE
    ROWNUM <= 3;