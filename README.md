# YOLOv4, OpenCV, Tesseract OCR, rozpoznání SPZ

git clone https://github.com/theAIGuysCode/yolov4-custom-functions.git

conda env create -f conda-gpu.yml

conda activate yolov4-gpu

# Stažení rozpoznání SPZ

https://drive.google.com/file/d/1EUPtbtdF0bjRtNjGv436vDY28EN5DXDH/view?usp=sharing

vložení custom.weight do yolov4-custom-functions\data

vytvoření vlastní třídy core\data\classes\custom.names

napsání do třídy custom.names "license_plate"

přepsání řádku v core\config.py "./data/classes/coco.names na ./data/classes/custom.names"

# Načtení yolov4 darknet style a převedení do tensorflow

python save_model.py --weights ./data/custom.weights --output ./checkpoints/custom-416 --input_size 416 --model yolov4 

# Stažení Tesseract OCR
[Windows install](https://github.com/UB-Mannheim/tesseract/wiki)     

[Linux install](https://linuxhint.com/install-tesseract-ocr-linux/)

# Přídání Tesseract OCR do PATH

# Test rozpoznání SPZ

 python detect.py --weights ./checkpoints/custom-416 --size 416 --model yolov4 --images ./data/images/car2.jpg --plate

