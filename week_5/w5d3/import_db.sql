DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS questions_like;
DROP TABLE IF EXISTS replies;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;

PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname VARCHAR NOT NULL, 
    lname VARCHAR NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title VARCHAR NOT NULL,
    body TEXT,
    user_id INTEGER NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    question_id INTEGER,
    user_id INTEGER,

    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    parent_reply_id INTEGER,
    user_id INTEGER NOT NULL,
    body TEXT,

    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (parent_reply_id) REFERENCES replies(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE questions_like (
    id INTEGER PRIMARY KEY,
    question_id INTEGER,
    user_id INTEGER,

    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO 
    users (fname, lname) 
VALUES 
    ('Bob', 'Smith'),
    ('Mike', 'Bob');

INSERT INTO
    questions (title, body, user_id)
VALUES
    ('what', 'example body', (SELECT id FROM users WHERE fname = 'Bob'));

INSERT INTO
    questions_like (question_id, user_id)
VALUES
    (1,2);

INSERT INTO
    question_follows (question_id, user_id)
VALUES
    ((SELECT id FROM questions WHERE user_id = 1 LIMIT 1), (SELECT id FROM users WHERE fname = 'Mike' LIMIT 1));

INSERT INTO
    replies (question_id, parent_reply_id, user_id, body)
VALUES
    (1, NULL, 2, 'this is wrong'),
    (1, 1, 1, 'no');







