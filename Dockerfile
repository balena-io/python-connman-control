FROM resin/rpi-raspbian:wheezy

RUN apt-get update

RUN apt-get install -y python wget build-essential python-dev python-pip

RUN pip install pyconnman

ADD connman_example.py /app/

RUN echo 'python /app/connman_example.py && tail -f /app/out.log' > /start

RUN chmod +x /start
