-- 코드를 입력하세요
SELECT
    cart_id
FROM
    (
        SELECT
            cart_id
        FROM
            cart_products
        GROUP BY
            cart_id,
            name
        HAVING
            name IN ('Yogurt', 'Milk')
    )
GROUP BY
    cart_id
HAVING 
    count(cart_id) > 1
ORDER BY
    cart_id;