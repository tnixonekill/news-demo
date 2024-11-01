<?php
require_once 'config.php'; 

class Db
{
    public static $connection;

    public function __construct()
    {
        if (!self::$connection) {
            self::$connection = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, PORT);

            if (self::$connection->connect_error) {
                die("Connection failed: " . self::$connection->connect_error);
            }

            self::$connection->set_charset(DB_CHARSET);
        }
    }

    public static function getConnection()
    {
        if (!self::$connection) {
            new self();
        }
        return self::$connection;
    }
}
