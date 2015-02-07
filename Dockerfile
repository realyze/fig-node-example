FROM dockerfile/nodejs

ADD . /myapp
WORKDIR /myapp

RUN npm install
