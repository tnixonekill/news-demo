<?php
require_once 'Db.php';

class Protype extends Db
{
    public function getAllProtypes()
    {
        $sql = self::$connection->prepare("SELECT * FROM protypes");
        $sql->execute();
        return $sql->get_result()->fetch_all(MYSQLI_ASSOC);
    }
}
?>
