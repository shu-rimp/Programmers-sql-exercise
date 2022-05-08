-- 코드를 입력하세요
SELECT
    *
FROM
    (
        SELECT
            o.animal_id,
            o.name
        FROM
            animal_ins i,
            animal_outs o
        WHERE
            i.animal_id = o.animal_id
        ORDER BY
            (i.datetime - o.datetime) ASC
    )
WHERE
    ROWNUM <= 2;