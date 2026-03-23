# SQL tutorial database

Questa cartella contiene una versione più completa del database del tuo progetto.

---

## 📂 Ordine consigliato

1. `01_create_database.sql`
2. `02_create_tables.sql`
3. `03_alter_tables.sql`
4. `04_indexes.sql`
5. `05_seed_example.sql`
6. `06_example_queries.sql`

---

## 🧱 Struttura

- `docenti`
- `studenti`
- `corsi`
- `studenti_corsi`

---

## 🎯 Perché è utile

Questa struttura supporta bene le query che stavi provando nel notebook:

- count studenti per corso  
- top studenti più iscritti  
- count corsi per docente  
- corsi ordinati per data fine  
- studenti di un certo docente  

---

## 🧠 Nota

Ho usato nomi coerenti al singolare:

- `id_studente`
- `id_corso`
- `id_insegnante`

Questo ti evita molti errori di battitura nelle JOIN.

---

## 🐍 Esempio utilizzo con Python

Esempio minimale per eseguire una query salvata in un file `.sql`.

```python
import mysql.connector

# Connessione al database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="sql_tutorial"
)

cursor = conn.cursor()

# Lettura file SQL
with open("database/06_example_queries.sql", "r") as file:
    query = file.read()

# Esecuzione query
cursor.execute(query)

# Output risultati
for row in cursor.fetchall():
    print(row)

# Chiusura connessione
cursor.close()
conn.close()