import mysql.connector
import datetime 
mydb = mysql.connector.connect(host='localhost',
                        database='auta',
                        user='root',
                        password='')

spz = "4SY5152"
now = datetime.datetime.now()

mycursor = mydb.cursor()
#Podle spz získáme jméno a příjmení vlastníka auta z databáze mysql
mycursor.execute("SELECT CONCAT (jmeno, ' ',prijmeni) as vlastnik FROM vlastnici where spz = '"+ spz + "'")

myresult = mycursor.fetchone()
#Rozdělení jména a příjmení
for row in myresult:
    owner = row.split(" ")
#Jméno
owners_name=owner[0]
#Příjmení
owners_surname=owner[1]

date = now.strftime("%Y-%m-%d")
time = now.strftime("%H:%M:%S")
#Vložení dat do mysql databáze
sql = "INSERT INTO data (spz, jmeno, prijmeni, datum, cas) VALUES (%s, %s, %s, %s, %s)"
val = (spz,owners_name,owners_surname,date,time)
mycursor.execute(sql, val)

mydb.commit()