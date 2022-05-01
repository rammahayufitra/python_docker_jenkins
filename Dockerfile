FROM python:3.8.0-buster 

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

WORKDIR /app 

COPY . . 
RUN pip3 install -r requirements.txt 

EXPOSE 5001



CMD ["python", "app/main.py"]

