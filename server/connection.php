<?php
class Connection
{
    private $host = "localhost";
    private $user = "root";
    private $pass = "";
    private $name = "zusammen";

    protected function connect()
    {
        try
        {
            $ds = 'mysql:host='.$this->host.';dbname='.$this->name;
            $pdo = new PDO($ds, $this->user, $this->pass);
            $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
            return $pdo;
        }

        catch (PDOException $error)
        {
            $error->getMessage();
            header("Location: http://localhost/Zusammen/index.php?error=Failed database connection!");
        }
    }
}
