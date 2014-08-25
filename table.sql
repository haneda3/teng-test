CREATE TABLE team (
    id INTEGER,
    name VARCHAR(100)
);

CREATE TABLE user (
    id INTEGER,
    name VARCHAR(100),
    team_id INTEGER
);

INSERT INTO team VALUES (1, 'TeamA');
INSERT INTO team VALUES (2, 'TeamB');

INSERT INTO user VALUES (1, 'UserA', 2);
INSERT INTO user VALUES (2, 'UserB', 1);

