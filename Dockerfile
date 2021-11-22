FROM r-base:4.1.2

ADD libraries.r /root
RUN R CMD BATCH /root/libraries.r
