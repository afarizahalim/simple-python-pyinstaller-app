FROM python:alpine3.17
WORKDIR /home/app

COPY . .
CMD [ "python3", "./add2vals.py"]
