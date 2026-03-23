USE scuola_sql_tutorial;

ALTER TABLE corsi
ADD CONSTRAINT fk_corsi_docenti
FOREIGN KEY (id_insegnante)
REFERENCES docenti(id_insegnante)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE studenti_corsi
ADD CONSTRAINT fk_studenti_corsi_studenti
FOREIGN KEY (id_studente)
REFERENCES studenti(id_studente)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE studenti_corsi
ADD CONSTRAINT fk_studenti_corsi_corsi
FOREIGN KEY (id_corso)
REFERENCES corsi(id_corso)
ON UPDATE CASCADE
ON DELETE CASCADE;
