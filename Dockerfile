
FROM python:3

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/


RUN pip install django

COPY . /code/

EXPOSE 8000/tcp
EXPOSE 8000/udp
CMD [ "python", "Ecommerce/manage.py", "runserver", "0.0.0.0:8000" ]
