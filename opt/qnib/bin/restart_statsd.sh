#!/bin/bash

kill -9 $(ps -ef|grep -v grep|grep statsd|awk '{print $2}')
supervisorctl restart statsd
