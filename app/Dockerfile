
FROM python:3.11.3


WORKDIR /app
COPY . /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt
EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["app.py"]