#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
aws s3 cp s3://cs351-lab2/ /var/www/html/ --recursive
