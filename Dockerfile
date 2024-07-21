FROM python:3.11-slim-bookworm

RUN apt-get update && apt-get install -y libpq-dev gcc
RUN pip install --upgrade pip

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt


WORKDIR /app
copy . /app

EXPOSE 8000
# CMD ["otree", "devserver", "0.0.0.0:8000"]