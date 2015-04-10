FROM qnib/terminal:cos7
MAINTAINER "Christian Kniep <christian@qnib.org>"

# statsd
RUN yum install -y qnib-statsd
ADD etc/consul.d/check_statsd.json /etc/consul.d/
