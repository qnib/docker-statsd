FROM qnib/terminal:cos7
MAINTAINER "Christian Kniep <christian@qnib.org>"

# statsd
RUN echo "2015-04-15.2";yum clean all;yum install -y qnib-statsd
ADD etc/statsd/config.js /etc/statsd/config.js
ADD etc/consul.d/check_statsd.json /etc/consul.d/
