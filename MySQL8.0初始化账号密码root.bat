bin\mysqld --initialize-insecure --console
::start bin\mysqld --skip-grant-tables --shared-memory
start bin\mysqld
ping -n 1 -w 5000 124.0.0.0
bin\mysqladmin -u root flush-privileges password "root"
::bin\mysql -u root --execute="flush privileges;ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
::bin\mysql -u root --execute="flush privileges;ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';"
::bin\mysql -u root -pabc --execute="UPDATE mysql.user SET authentication_string='root' WHERE user='root' and host='localhost';"
pause