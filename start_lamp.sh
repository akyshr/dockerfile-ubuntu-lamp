#!/bin/bash

MYSQL_PASS=${MYSQL_PASS:-admin}

/etc/init.d/mysql start
mysqladmin -u root password "$MYSQL_PASS"

/etc/init.d/apache2 start 

