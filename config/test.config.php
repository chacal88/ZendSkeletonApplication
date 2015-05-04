<?php
return array(
  'db' => array(
    'driver' => 'PDO',
    'dsn'    => 'mysql:dbname=zf2napratica_test;host=localhost',
    'username' => 'zend',
    'password' => 'zend',
    'driver_options' => array(
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''
    ),
));