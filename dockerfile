FROM python:3.8.0-buster 

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

WORKDIR /app 

COPY requirements.txt . 
RUN pip3 install -r requirements.txt 

COPY /app .

EXPOSE 3000

CMD ["python", "main.py"]

