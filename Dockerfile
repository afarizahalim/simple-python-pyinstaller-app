FROM python:alpine3.17
WORKDIR /home/app/

COPY *.py ./
ENTRYPOINT [ "python3", "./add2vals.py"]
