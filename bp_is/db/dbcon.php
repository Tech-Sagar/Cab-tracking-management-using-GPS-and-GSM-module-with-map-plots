<?php
$con=mysqli_connect('localhost','root','','driver')or die(mysql_error());
echo "dbms";
// mysql username
define('DB_USER', 'root');

// mysql password
define('DB_PASSWORD', '');

// MySQL-server
define('DB_HOST', 'localhost');

// name of database
define('DB_NAME', 'driver');

// name of competition
define('COMP_NAME', 'TRACKING');

?>