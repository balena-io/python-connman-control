FROM resin/rpi-raspbian:wheezy

RUN apt-get update

RUN apt-get install -y python python-pip python-dbus

RUN pip install pyconnman

ADD connman_example.py /app/

RUN echo 'python /app/connman_example.py' > /start

RUN chmod +x /start
