CREATE TABLE 'Team' (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `name` TEXT NOT NULL
);

CREATE TABLE 'Player' (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `team_id` INTEGER NOT NULL,
    `first_name` TEXT NOT NULL,
    `last_name` TEXT NOT NULL,
    FOREIGN KEY(`team_id`) REFERENCES `Team`(`id`)
);

CREATE TABLE 'Team_score' (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `team_id` INTEGER NOT NULL,
    `score` INTEGER NOT NULL,
    `timestamp` INTEGER NOT NULL,
    FOREIGN KEY(`team_id`) REFERENCES `Team`(`id`)
);

INSERT INTO `Team`
VALUES (null, 'Hufflepuff');
INSERT INTO `Team`
VALUES (null, 'Slytherin');

SELECT * FROM `Team`

INSERT INTO `Player` 
VALUES (null, 2, 'Cho', 'Chang');
INSERT INTO `Player` 
VALUES (null, 2, 'Cedric', 'Diggory');

SELECT * FROM `Player`

INSERT INTO 'Team_score'
VALUES (null, 1, 5, 1580391255824);

SELECT * FROM 'Team_score'