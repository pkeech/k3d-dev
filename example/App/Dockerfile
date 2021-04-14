## BASE IMAGE
FROM python:3.7.2-stretch

## CONTAINER LABELS
LABEL Maintainer="Peter Keech <pkeech@ngds.com>"

## SPECIFIY WORKING DIR
WORKDIR /app

## COPY SRC FILES TO CONTAINER
ADD . /app

## INSTALL DEPENDENCIES
RUN pip install -r requirements.txt

## DEFINE ENVIRONEMENT
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    FLASK_ENV=development \
    FLASK_RUN_PORT=8080 \
    FLASK_APP=run.py

## EXPOSE PORT
EXPOSE 8080

## START FLASK
CMD ["flask", "run", "--host=0.0.0.0"]