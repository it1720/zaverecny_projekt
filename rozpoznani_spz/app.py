import mysql.connector
import datetime 

def ownersName(plate_num):
    owner=""
    mydb = mysql.connector.connect(host='localhost',database='auta',user='root',password='')
    mycursor = mydb.cursor()
    #Podle spz získáme jméno a příjmení vlastníka auta z databáze mysql
    mycursor.execute("SELECT CONCAT (jmeno, ' ',prijmeni) as vlastnik FROM vlastnici where spz = '"+ plate_num + "'")
    myresult = mycursor.fetchone()
    # Rozdělení jména a příjmení
    if myresult!="":
        for row in myresult:
                owner = row.split(" ")
    return owner

def postData(owner,plate_num):
    # Datum a čas ze systému
    now = datetime.datetime.now()
    mydb = mysql.connector.connect(host='localhost',database='auta',user='root',password='')
    mycursor = mydb.cursor()
    if owner!="":
        #Jméno
        owners_name=ownersName(plate_num)[0]
        #Příjmení
        owners_surname=ownersName(plate_num)[1]
    # Pokud není SPZ v databázi, nastaví se jméno a příjmení na neznámé
    else:
        owners_name="neznámé"
        owners_surname="neznámé"
    date = now.strftime("%Y-%m-%d")
    time = now.strftime("%H:%M:%S")
    #Vložení dat do mysql databáze
    sql = "INSERT INTO data (spz, jmeno, prijmeni, datum, cas) VALUES (%s, %s, %s, %s, %s)"
    val = (plate_num,owners_name,owners_surname,date,time)
    mycursor.execute(sql, val)
    mydb.commit()


def sendEmail(owner,plate_num):
    if owner!="":
        #Jméno
        owners_name=ownersName(plate_num)[0]
        #Příjmení
        owners_surname=ownersName(plate_num)[1]
    # Pokud není SPZ v databázi, nastaví se jméno a příjmení na neznámé
    else:
        owners_name="neznámé"
        owners_surname="neznámé"
    # Datum a čas ze systému
    now = datetime.datetime.now()   
    port = 465 
    smtp_server = "smtp.gmail.com"
    # Odesílatel
    sender_email = "emailforspz55@gmail.com"
    # Příjemce
    receiver_email = "mat.ricny@gmail.com"
    # Heslo(změnit)
    password = "****"
    date = now.strftime("%d. %m. %Y")
    time = now.strftime("%H: %M: %S")
    # Zpráva
    message = """\
    """ 
    # Předmět emailu
    """
    Subject: SPZ

    """f"""
    SPZ:              {plate_num}

    Vlastník:         {}
    
    Datum:            {date}
    
    Čas:              {time}
    """"
    # Nastavení kodování utf-8
    """
    .""".encode('utf-8').strip()
    context = ssl.create_default_context()
    # Odeslání
    with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
        server.login(sender_email, password)
        server.sendmail(sender_email, receiver_email, message)