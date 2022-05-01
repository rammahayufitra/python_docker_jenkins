FROM python:3.8.0-buster 

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

WORKDIR /app 

COPY . . 
RUN pip3 install -r requirements.txt 

# EXPOSE 5000

# CMD ["python", "main.py"]

CMD gunicorn --bind 0.0.0.0:5000 wsgi:app
