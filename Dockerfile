FROM python:latest
ENV PYTHONUNBUFFERED 1
RUN mkdir /project
WORKDIR /project
ADD . /project/
RUN 'pip install -r requirements.txt'
EXPOSE 9000
CMD python manage.py runserver 0.0.0.0:9000
