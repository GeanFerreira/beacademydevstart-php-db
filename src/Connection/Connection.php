<?php

declare(strict_types=1);

namespace App\Connection;

abstract class Connection {
    public static function getConnection(): \PDO {
        $database = 'nome_do_banco_de_dados';
        $username = 'nome_do_usuario_mariadb';
        $passwd = 'senha_mariadb!';

        return new \PDO('mysql:host=localhost;dbname='.$database, $username, $passwd);
    }
}
