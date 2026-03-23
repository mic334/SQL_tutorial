USE scuola_sql_tutorial;

CREATE INDEX idx_studenti_cognome ON studenti(cognome, nome);
CREATE INDEX idx_docenti_cognome ON docenti(cognome, nome);
CREATE INDEX idx_corsi_nome ON corsi(nome_corso);
CREATE INDEX idx_corsi_data_fine ON corsi(data_fine);
CREATE INDEX idx_corsi_docente ON corsi(id_insegnante);
CREATE INDEX idx_studenti_corsi_studente ON studenti_corsi(id_studente);
CREATE INDEX idx_studenti_corsi_corso ON studenti_corsi(id_corso);
CREATE INDEX idx_studenti_corsi_data_iscrizione ON studenti_corsi(data_iscrizione);
