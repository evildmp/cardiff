FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python manage.py collectstatic --noinput
CMD uwsgi --module=cardiff.wsgi --http=0.0.0.0:80
