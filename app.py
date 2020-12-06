import mysql.connector
import datetime 
mydb = mysql.connector.connect(host='localhost',
                        database='auta',
                        user='root',
                        password='')
#os.system('dir /b C:\\zaverecny_projekt\yolov4-custom-functions\data\\video\\video\ZONHS > videos.txt')
#os.system('dir /b C:\\zaverecny_projekt\yolov4-custom-functions\detections > detected_videos.txt')
#my_file = open("videos.txt", "r")
#new_videos = my_file.readlines()
#my_file = open("detected_videos.txt")
#old_videos = my_file.readlines()
# test jestli už bylo video detekováno, jestli ne, bude video detekováno
#for v in new_videos:
    #if v not in old_videos:
        #PICTURE - os.system("conda activate yolov4-gpu & python detect.py --weights ./checkpoints/custom-416 --size 416 --model yolov4 --images ./data/images/car2.jpg --plate")
        #VIDEO - os.system('"python detect_video.py --weights ./checkpoints/custom-416 --size 416 --model yolov4 --video ./data/video/video/ZOHNS/'+ v +'--output ./detections/recognition.avi --plate"')
       #os.system('echo '+ v +'>> detected_videos.txt')

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
