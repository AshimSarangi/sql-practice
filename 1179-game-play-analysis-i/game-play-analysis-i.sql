/* Write your T-SQL query statement below */
SELECT player_id, first_login FROM 
    (SELECT player_id, event_date AS first_login, 
    DENSE_RANK() OVER (PARTITION BY player_id ORDER BY event_date ASC) rnk
    FROM Activity) t
    WHERE rnk = 1