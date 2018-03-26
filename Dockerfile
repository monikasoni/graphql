FROM python:3.6
 
RUN apt-get -qq update
 
RUN apt-get install -y git
 
RUN git clone https://github.com/howtographql/graphql-python.git
 
RUN pip install django==2.0.2 graphene==2.0.1 graphene-django==2.0.0 django-filter==1.1.0 django-graphql-jwt==0.1.5
 
CMD cd graphql-python;django-admin startproject hackernews;cd hackernews; python manage.py migrate; python manage.py runserver 0.0.0.0:8000; python manage.py startapp links; python manage.py makemigrations; python manage.py migrate;

