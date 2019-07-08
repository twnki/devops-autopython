FROM python:3.7-alpine

RUN apk update \ 
    && apk add cmake make gcc libtool musl-dev g++ libffi-dev openssl-dev libxml2-dev libxslt-dev \
    && pip install ansible nornir
	
CMD [ "/bin/sh" ]
