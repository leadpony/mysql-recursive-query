SET @start=1;

WITH RECURSIVE cte(id1, id2) AS (
    SELECT id1, id2 FROM same_thing WHERE id1 = @start OR id2 = @start
  UNION
    SELECT s.id1, s.id2 FROM same_thing s
    INNER JOIN cte ON s.id1 = cte.id1 OR s.id1 = cte.id2 OR s.id2 = cte.id1 OR s.id2 = cte.id2
)
SELECT id1, id2 FROM cte;
