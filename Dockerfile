FROM python:3-alpine

ENV T2K_LOG_FILE /usr/src/t2k/log
ENV T2K_MESS_DIR /usr/src/t2k/messages
ENV T2K_LOG_FILE INFO

RUN mkdir /usr/src/t2k

WORKDIR /usr/src/t2k

COPY . /usr/src/t2k

EXPOSE 80

VOLUME ["/usr/src/t2k/messages", "/usr/src/t2k/log"]

CMD ["python", "serveur_http_bouchon_T2k.py"]