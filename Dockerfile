FROM python:3.12.0a4-alpine3.17
WORKDIR /home/afa/formationdevops/simple-python-pyinstaller-app

COPY /sources/add2vals.py ./

CMD [ "python3", "./add2vals.py"]