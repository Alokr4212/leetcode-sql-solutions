# Write your MySQL query statement below
(
    SELECT name as results
    from Users as u
    JOIN MovieRating as mr ON u.user_id = mr.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(mr.movie_id) DESC, u.name asc
    LIMIT 1
)
UNION ALL
(
    SELECT title as results
    from Movies as m
    JOIN MovieRating as mr ON m.movie_id = mr.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title asc
    LIMIT 1
);
