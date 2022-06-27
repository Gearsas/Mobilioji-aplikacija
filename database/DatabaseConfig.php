<?php

class DataBaseConfig
{
    public $servername;
    public $username;
    public $password;
    public $databasename;

    public function __construct()
    {

        $this->servername = 'yourservername';
        $this->username = 'yourusername';
        $this->password = 'your password';
        $this->databasename = 'yourdatabasename';

    }
}

?>
