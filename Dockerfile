FROM python:alpine3.17
WORKDIR /home/app

COPY ./add2vals.py .
CMD [ "python3", "./add2vals.py"]
