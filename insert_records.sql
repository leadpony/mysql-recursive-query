DELETE FROM same_thing;
DELETE FROM thing;

INSERT INTO thing(id) VALUES(1),(2),(3),(4),(5),(6),(7),(8),(9);
INSERT INTO same_thing(id1, id2) VALUES
(1,9),
(2,5),
(3,5),
(5,7),
(3,6),
(4,8),
(4,9),
(1,4)
;
