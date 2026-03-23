USE scuola_sql_tutorial;

INSERT INTO docenti (nome, cognome, materia, email, data_assunzione) VALUES
('Marco', 'Rossi', 'Matematica', 'marco.rossi@scuola.it', '2022-09-01'),
('Lucia', 'Bianchi', 'Informatica', 'lucia.bianchi@scuola.it', '2021-09-15'),
('Anna', 'Verdi', 'Inglese', 'anna.verdi@scuola.it', '2023-01-10');

INSERT INTO studenti (nome, cognome, data_nascita, email, telefono) VALUES
('Luca', 'Neri', '2001-04-12', 'luca.neri@email.it', '3331111111'),
('Sara', 'Gialli', '2000-11-02', 'sara.gialli@email.it', '3332222222'),
('Marta', 'Blu', '2002-07-19', 'marta.blu@email.it', '3333333333'),
('Paolo', 'Viola', '2001-01-23', 'paolo.viola@email.it', '3334444444'),
('Giulia', 'Rosa', '2000-06-30', 'giulia.rosa@email.it', '3335555555');

INSERT INTO corsi (nome_corso, descrizione, numero_max, data_inizio, data_fine, id_insegnante) VALUES
('Algebra Base', 'Fondamenti di algebra', 25, '2026-03-01', '2026-05-30', 1),
('Python Base', 'Introduzione a Python', 30, '2026-03-10', '2026-06-15', 2),
('English Conversation', 'Conversazione in inglese', 20, '2026-02-20', '2026-04-20', 3),
('SQL Base', 'Query e database relazionali', 35, '2026-03-05', '2026-06-05', 2);

INSERT INTO studenti_corsi (id_studente, id_corso, data_iscrizione, stato_iscrizione, voto_finale) VALUES
(1, 1, '2026-03-02', 'attivo', NULL),
(1, 2, '2026-03-11', 'attivo', NULL),
(1, 4, '2026-03-12', 'attivo', NULL),
(2, 2, '2026-03-12', 'attivo', NULL),
(2, 4, '2026-03-13', 'attivo', NULL),
(3, 1, '2026-03-03', 'attivo', NULL),
(3, 3, '2026-02-21', 'attivo', NULL),
(3, 4, '2026-03-13', 'attivo', NULL),
(4, 2, '2026-03-11', 'attivo', NULL),
(5, 4, '2026-03-14', 'attivo', NULL);
