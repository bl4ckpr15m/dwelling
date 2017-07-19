FROM python:latest

ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
COPY . /code/

# Install some necessary things.
RUN apt-get update
RUN apt-get install -y swig libssl-dev dpkg-dev netcat

# Install our requirements.
RUN pip install -U pip
RUN pip install -Ur requirements.txt

# Collect our static media.
RUN python /code/manage.py collectstatic --noinput
