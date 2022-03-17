FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /app
WORKDIR /app

RUN apt-get update -y
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt
RUN apt-get install -y gunicorn
RUN python -m pip install flask

CMD ["echo", "F"]

