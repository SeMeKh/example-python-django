FROM library/python:3

WORKDIR /app/
ADD ./requirements.txt ./
RUN pip install -r ./requirements.txt

ADD ./ ./
RUN ./manage.py collectstatic --noinput

