USE scuola_sql_tutorial;

-- 1. Numero studenti per corso
SELECT
    c.id_corso,
    c.nome_corso,
    c.numero_max,
    COUNT(sc.id) AS totale_studenti
FROM corsi c
LEFT JOIN studenti_corsi sc ON c.id_corso = sc.id_corso
GROUP BY c.id_corso, c.nome_corso, c.numero_max
ORDER BY totale_studenti DESC, c.nome_corso ASC;

-- 2. Numero corsi per studente
SELECT
    s.id_studente,
    s.nome,
    s.cognome,
    COUNT(sc.id) AS totale_corsi
FROM studenti s
LEFT JOIN studenti_corsi sc ON s.id_studente = sc.id_studente
GROUP BY s.id_studente, s.nome, s.cognome
ORDER BY totale_corsi DESC, s.cognome ASC;

-- 3. Numero corsi per docente
SELECT
    d.id_insegnante,
    d.nome,
    d.cognome,
    COUNT(c.id_corso) AS numero_corsi_prof
FROM docenti d
LEFT JOIN corsi c ON d.id_insegnante = c.id_insegnante
GROUP BY d.id_insegnante, d.nome, d.cognome
ORDER BY numero_corsi_prof DESC, d.cognome ASC;

-- 4. Top 3 studenti piu presenti nei corsi
SELECT
    s.nome,
    s.cognome,
    COUNT(sc.id) AS stud
FROM studenti s
INNER JOIN studenti_corsi sc ON sc.id_studente = s.id_studente
GROUP BY s.id_studente, s.nome, s.cognome
ORDER BY stud DESC, s.cognome ASC
LIMIT 3;

-- 5. I 2 corsi che finiscono prima
SELECT
    c.id_corso,
    c.nome_corso,
    c.data_fine
FROM corsi c
ORDER BY c.data_fine ASC
LIMIT 2;

-- 6. Studenti che seguono corsi del docente con id 2
SELECT DISTINCT
    s.id_studente,
    s.nome,
    s.cognome
FROM studenti s
INNER JOIN studenti_corsi sc ON sc.id_studente = s.id_studente
INNER JOIN corsi c ON c.id_corso = sc.id_corso
WHERE c.id_insegnante = 2
ORDER BY s.cognome, s.nome;

-- 7. Corsi pieni
SELECT
    c.id_corso,
    c.nome_corso,
    c.numero_max,
    COUNT(sc.id) AS iscritti
FROM corsi c
LEFT JOIN studenti_corsi sc ON sc.id_corso = c.id_corso
GROUP BY c.id_corso, c.nome_corso, c.numero_max
HAVING COUNT(sc.id) >= c.numero_max;
