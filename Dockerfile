FROM python:3.12.0a5-bullseye

RUN mkdir -p /usr/src/api
WORKDIR /usr/src/api

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./api.py ./
EXPOSE 8000
CMD [ "uvicorn" , "--host" , "0.0.0.0" ,"api:app" , "--reload"]
