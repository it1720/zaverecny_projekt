import os
import json
os.system('dir /b C:\\zaverecny_projekt\yolov4-custom-functions\data\\video\\video\ZONHS > videos.txt')
os.system('dir /b C:\\zaverecny_projekt\yolov4-custom-functions\detections > detected_videos.txt')
my_file = open("videos.txt", "r")
new_videos = my_file.readlines()
my_file = open("detected_videos.txt")
old_videos = my_file.readlines()
# test jestli už bylo video detekováno, jestli ne, bude video detekováno
for v in new_videos:
    if v not in old_videos:
        #PICTURE - os.system("conda activate yolov4-gpu & python detect.py --weights ./checkpoints/custom-416 --size 416 --model yolov4 --images ./data/images/car2.jpg --plate")
        #VIDEO - os.system('"python detect_video.py --weights ./checkpoints/custom-416 --size 416 --model yolov4 --video ./data/video/video/ZOHNS/'+ v +'--output ./detections/recognition.avi --plate"')
        os.system('echo '+ v +'>> detected_videos.txt')
 
