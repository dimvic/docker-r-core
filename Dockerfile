FROM alpine:3.15

RUN apk add --no-cache tzdata
RUN cp /usr/share/zoneinfo/Europe/London /etc/localtime
RUN echo "Europe/London" >  /etc/timezone
RUN apk del tzdata

RUN apk add --no-cache R

ADD libraries.r /root
RUN R CMD BATCH /root/libraries.r

RUN rm -rf /tmp/* /var/cache/apk/*

CMD ["R", "--no-save"]
