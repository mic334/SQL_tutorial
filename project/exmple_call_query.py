import mysql.connector

# Connessione
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="sql_tutorial"
)

cursor = conn.cursor()

# Legge il file SQL
with open("query/06_example_queries.sql", "r") as file:
    query = file.read()

# Esegue la query
cursor.execute(query)

# Stampa risultati
for row in cursor.fetchall():
    print(row)

# Chiusura
cursor.close()
conn.close()