USE scuola_sql_tutorial;

CREATE TABLE docenti (
    id_insegnante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    materia VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    data_assunzione DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE studenti (
    id_studente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    data_nascita DATE NOT NULL,
    email VARCHAR(120) UNIQUE,
    telefono VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE corsi (
    id_corso INT AUTO_INCREMENT PRIMARY KEY,
    nome_corso VARCHAR(100) NOT NULL,
    descrizione TEXT,
    numero_max INT NOT NULL,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    id_insegnante INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_numero_max CHECK (numero_max > 0),
    CONSTRAINT chk_date_corso CHECK (data_fine >= data_inizio)
);

CREATE TABLE studenti_corsi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_studente INT NOT NULL,
    id_corso INT NOT NULL,
    data_iscrizione DATE NOT NULL,
    stato_iscrizione ENUM('attivo', 'ritirato', 'completato') DEFAULT 'attivo',
    voto_finale DECIMAL(5,2) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_studente_corso UNIQUE (id_studente, id_corso)
);
