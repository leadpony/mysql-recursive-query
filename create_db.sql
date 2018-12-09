DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;

use testdb;

CREATE TABLE thing (
    id BIGINT,

    PRIMARY KEY(id)
);

CREATE TABLE same_thing (
    id1 BIGINT,
    id2 BIGINT,

    PRIMARY KEY(id1, id2),
    CHECK(id1 < id2),
    FOREIGN KEY(id1) REFERENCES thing(id),
    FOREIGN KEY(id2) REFERENCES thing(id)
);
