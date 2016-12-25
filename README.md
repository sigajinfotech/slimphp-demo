# slimphp-demo

There are two folders in the source code
First, "src" under which complete code of demo test is placed.
Second, "db-backup" which contain database backup file. 

To setup this demo, follow below setps :
========================================
1. Clone source code from GitHub to your local machine or server. 
   URL : https://github.com/sigajinfotech/slimphp-demo.git
2. Create database with name "demo-test" and import database backup from "db-backup/demo-test.sql".
3. Update your database login credentials in file "src/public/index.php" at line number 14-17.
4. Set vertual host configuration, server name and path in file "src/public/httpd-vhosts.conf"
5. Setup is done. Run URL "http://SERVER_NAME/users".

