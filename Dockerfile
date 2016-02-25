FROM alpine:3.3
MAINTAINER Roman Schaller <roman.schaller@gmail.com>

RUN apk add --update \
	nodejs \
	git \
	bash && \
	rm -rf /var/cache/apk/*

RUN npm install -g gulp
RUN npm install -g bower
RUN npm install -g tsd
RUN npm install -g phantomjs
ADD startScript /root/startScript
