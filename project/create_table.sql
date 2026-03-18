CREATE DATABASE IF NOT EXISTS esercizi_scuola_sql;

USE esercizi_scuola_sql;

CREATE TABLE IF NOT EXISTS corsi (
    id_corsi INT PRIMARY KEY AUTO_INCREMENT,
    nome_corso VARCHAR(50) UNIQUE , 
    numero_partecipanti INT NOT NULL
);

INSERT INTO corsi (nome_corso, numero_partecipanti)
VALUES
('MATEMATICA',10),
('FISICA', 20),
('CHIMICA', 5),
('BIOLOGIA',3),
('STORIA',2),
('ITALIANO', 35);

CREATE TABLE IF NOT EXISTS docenti (
    id_insegnante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL, 
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    materia VARCHAR(50) NOT NULL UNIQUE 
);

INSERT INTO docenti (nome, cognome, email, materia)
VALUES
("Michele", "Blu", "michele.blu@prof.it", "CHIMICA"),
("Francesco","Rosso", "francesco.rosso@prof.it","MATEMATICA"),
("Francesca","Verde","francesca.verde@prof.it","STORIA"),
("Michele","Giallo","michele.giallo@prof.it","ITALIANO"),
("Giuseppe","Bianco","giuseppe.bianco@prof.it","FISICA"),
("Maria","Nero","maria.nero@prof.it","BIOLOGIA");

CREATE TABLE IF NOT EXISTS studenti (
    id_studenti INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    data_nascita DATE
);

INSERT INTO studenti (nome, cognome, email, data_nascita)
VALUES
('Luca', 'Rossi', 'luca.rossi@studenti.it', '2004-03-15'),
('Marco', 'Verde', 'marco.verde@studenti.it', '2008-07-22'),
('Giulia', 'Blu', 'giulia.blu@studenti.it', '2007-11-10'),
('Sara', 'Giallo', 'sara.giallo@studenti.it', '2008-01-05'),
('Matteo', 'Nero', 'matteo.nero@studenti.it', '2010-06-18'),
('Alessia', 'Bianco', 'alessia.bianco@studenti.it', '2009-09-30'),
('Davide', 'Arancione', 'davide.arancione@studenti.it', '2001-04-12'),
('Francesca', 'Viola', 'francesca.viola@studenti.it', '2001-12-25'),
('Andrea', 'Rosa', 'andrea.rosa@studenti.it', '2010-02-14'),
('Chiara', 'Marrone', 'chiara.marrone@studenti.it', '2009-08-08'),
('Simone', 'Grigio', 'simone.grigio@studenti.it', '2007-06-03'),
('Elena', 'Turchese', 'elena.turchese@studenti.it', '2008-10-19'),
('Federico', 'Oro', 'federico.oro@studenti.it', '2010-01-27'),
('Martina', 'Argento', 'martina.argento@studenti.it', '2009-05-11'),
('Giorgio', 'Indaco', 'giorgio.indaco@studenti.it', '2007-09-07');