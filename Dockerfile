
FROM python:3.11.1

# RUN apt-get update
# RUN apt-get install python3-dev default-libmysqlclient-dev gcc  -y 

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt
EXPOSE 80

ENTRYPOINT ["python"]
CMD ["app.py"]