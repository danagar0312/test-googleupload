FROM python:latest
ENV PYTHONUNBUFFERED 1
RUN mkdir /project
WORKDIR /project
ADD . /project/
RUN /bin/sh -c bat 'pip install -r requirements.txt'
EXPOSE 9000
CMD python manage.py runserver 0.0.0.0:9000
