FROM python:3.7-alpine

RUN apk update \ 
    && apk add cmake make gcc libtool musl-dev g++ libffi-dev openssl-dev libxml2-dev libxslt-dev neovim \
    && pip install ansible nornir neovim pynvim \
    && apk del cmake make gcc libtool musl-dev g++ libffi-dev openssl-dev libxml2-dev libxslt-dev \
    && ln -s /usr/local/bin/nvim /usr/local/bin/vim
	
CMD [ "/bin/sh" ]
