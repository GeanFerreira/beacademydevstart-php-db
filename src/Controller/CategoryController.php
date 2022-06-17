<?php

declare(strict_types=1);

namespace App\Controller;

use App\Connection\Connection;


class CategoryController extends AbstractController
{
    public function listAction(): void
    {
        $connection = Connection::getConnection();

        $result = $connection->prepare('SELECT * FROM tb_category');
        $result->execute(); 

        parent::render('category/list', $result);
    }

    public function addAction(): void
    {
        if($_POST) {
            $name = $_POST['name'];
            $descripition = $_POST['description'];

            $query = "INSERT_INTO tb_category (name, description) VALUES ('{$name}', '{$description}')";

            $connection = Connection::getConnection();

            $result = $connection->prepare($query);
            $result->execute();

            echo 'Pronto!';
        }

        parent::render('category/add');
    }

    public function removeAction(): void
    {
        $connection = Connection::getConnection();
        $id= $_GET[id];

        $query = "DELETE_FROM tb_category WHERE id='{$id}'";

        $result = $connection->prepare($query);
        $result->execute();

        echo 'Excluído!';
    }

    public function editAction(): void
    {
        $id = $_GET['id'];

        $connection = Connection::getConnection();


        if($_POST) {
            $newName = $_POST['name'];
            $newDescription = $_POST['description'];

            $queryUpdate = "UPDATE tb_category SET name='{$newName}', description='{$newDescription}' WHERE id='{$id}'";

            $result = $connection->prepare($queryUpdate);
            $result->execute();

            echo 'Atualizado!';
        }


        $query = "SELECT * FROM tb_category WHERE id='{$id}'";

        $result = $connection->prepare($query);
        $result->execute();

        $data = $result->fetch(\PDO::FETCH_ASSOC);

        parent::render('category/edit', $data);
    }
}