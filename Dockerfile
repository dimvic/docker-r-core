FROM --platform=linux/arm64/v8 r-base:4.1.2

# en_GB
RUN echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_GB.utf8 \
    && /usr/sbin/update-locale LANG=en_GB.UTF-8
ENV LC_ALL en_GB.UTF-8
ENV LANG en_GB.UTF-8

ADD libraries.r /root
RUN R CMD BATCH /root/libraries.r

RUN rm -rf /tmp/*

CMD ["R", "--no-save"]
