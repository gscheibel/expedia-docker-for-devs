FROM debian:latest as builder

ARG FILE=hello.html

RUN echo "<html><body><h1>Docker4devs Multistage</h1></body></html>" >> $FILE

FROM nginx
COPY --from=builder /$FILE /usr/share/nginx/html/
COPY ./default /etc/nginx/conf.d/default.conf
