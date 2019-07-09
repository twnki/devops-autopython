FROM python:3.7-alpine

RUN apk update \ 
    && apk add cmake make gcc libtool musl-dev g++ libffi-dev openssl-dev libxml2-dev libxslt-dev openssh neovim \
    && pip install ansible nornir neovim pynvim \
    && apk del --purge cmake make gcc libtool musl-dev g++ libffi-dev openssl-dev libxml2-dev libxslt-dev \
    && ln -s /usr/bin/nvim /usr/local/bin/vim \
    && rm -rf /root/.cache/pip 
    
ENV PS1="\\d - \\t - \\[\\e[33m\\]\\u\\[\\e[m\\]\\[\\e[32m\\]@\\[\\e[m\\]\\[\\e[33m\\]\\h\\[\\e[m\\]\\[\\e[32m\\]:\\[\\e[m\\]\\[\\e[33m\\]\\w\\[\\e[m\\] "

CMD [ "/bin/sh" ]
