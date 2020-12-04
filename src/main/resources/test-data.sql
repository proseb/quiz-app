CREATE TABLE question
(
    id      INT AUTO_INCREMENT,
    content TEXT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO question(id, content)
VALUES (1, 'Pytanie 1');
INSERT INTO question(id, content)
VALUES (2, 'Pytanie 2');
INSERT INTO question(id, content)
VALUES (3, 'Pytanie 3');
INSERT INTO question(id, content)
VALUES (4, 'Pytanie 4');

CREATE TABLE answer
(
    id          INT AUTO_INCREMENT,
    content     TEXT       NOT NULL,
    question_id INT        NOT NULL,
    correct     TINYINT(1) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES question (id)
);

INSERT INTO answer(id, content, question_id, correct)
VALUES (1, 'Odpowiedź 1.1', 1, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (2, 'Odpowiedź 1.2', 1, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (3, 'Odpowiedź 2.1', 2, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (4, 'Odpowiedź 2.2', 2, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (5, 'Odpowiedź 2.3', 2, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (6, 'Odpowiedź 3.1', 3, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (7, 'Odpowiedź 3.2', 3, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (8, 'Odpowiedź 4.1', 4, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (9, 'Odpowiedź 4.2', 4, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (10, 'Odpowiedź 4.3', 4, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (11, 'Odpowiedź 4.4', 4, 0);

