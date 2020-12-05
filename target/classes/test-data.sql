INSERT INTO role(id, name)
VALUES (1, 'USER');

CREATE TABLE question
(
    id      INT AUTO_INCREMENT,
    content TEXT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO question(id, content)
VALUES (1, 'Wybierz podpunkt zawierający prawidłową charakterystykę Morza Bałtyckiego:');
INSERT INTO question(id, content)
VALUES (2, 'Wybierz zdanie opisujące grąd:');
INSERT INTO question(id, content)
VALUES (3, 'Wybierz czynnik, który nie jest przyczyną powodzi w Polsce:');
INSERT INTO question(id, content)
VALUES (4, 'Rozpoznaj glebę po opisie: Wykształciła się bezpośrednio na skałach wapiennych i gipsowych. Odznacza się bogatym poziomem próchniczym i dużą żyznością.');
INSERT INTO question(id, content)
VALUES (5, 'Wybierz zdanie opisujące olsy:');


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
VALUES (1, 'Młode, bardzo płytkie (maksymalna głębokość 52 m) morze śródlądowe.', 1, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (2, 'Młode morze międzykontynentalne o średnim zasoleniu 35‰.', 1, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (3, 'Chłodne morze szelfowe o średnim zasoleniu 7,5‰.', 1, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (4, 'Chłodne morze przybrzeżne o słabo rozwiniętej linii brzegowej.', 1, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (5, 'Lasy z przewagą drzew iglastych.', 2, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (6, 'Porastają one piaszczyste obszary, na których występują gleby bielicowe.', 2, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (7, 'Lasy liściaste z przewagą dębu i grabu.', 2, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (8, 'Lasy występujące w bagiennych obniżeniach.', 2, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (9, 'Wiosenne roztopy.', 3, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (10, 'Zatory na rzekach wschodniej Europy.', 3, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (11, 'Podniesienie poziomy wody w ujściu rzeki (tzw. cofka).', 3, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (12, 'Długotrwałe, intensywne deszcze.', 3, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (13, 'Mada', 4, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (14, 'Czarnoziem', 4, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (15, 'Gleba górska', 4, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (16, 'Rędzina', 4, 1);
INSERT INTO answer(id, content, question_id, correct)
VALUES (17, 'Lasy z przewagą drzew iglastych', 5, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (18, 'Porastają one piaszczyste obszary, na których występują gleby bielicowe.', 5, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (19, 'Lasy liściaste z przewagą dębu i grabu.', 5, 0);
INSERT INTO answer(id, content, question_id, correct)
VALUES (20, 'Lasy występujące w bagiennych obniżeniach.', 5, 1);


