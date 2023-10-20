#!/bin/bash
SQL="CREATE USER 'master'@'%' IDENTIFIED BY 'senha';"
mysql -u "root" -p"123456" "mysql" -e "$SQL"

SQLGRANT="GRANT ALL PRIVILEGES ON * . * TO 'master'@'%';"
mysql -u "root" -p"123456" "mysql" -e "$SQLGRANT"

mysql -u "root" -p"123456" "mysql" -e "flush privileges"