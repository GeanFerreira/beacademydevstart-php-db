<?php

declare(strict_types=1);

namespace App\Controller;

use App\Controller\AbstractController;
use App\Connection\Connection;
use Dompdf\Dompdf;

class ProductController extends AbstractController {
    public function listAction(): void
    {
        $connection = Connection::getConnection();

        $result = $connection->prepare('SELECT * FROM tb_product');
        $result->execute();

        parent::render('product/list', $result);
    }

    public function addAction(): void
    {
        $connection = Connection::getConnection();

        if($_POST) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $value = $_POST['value'];
            $photo = $_POST['photo'];
            $quantity = $_POST['quntity'];
            $categoryId = $_POST['category'];
            $createdAt = date('Y-m-d H:i:s');

            $query = "
                INSERT INTO tb_product
                (name, description, value, photo, quantity, categoryId, created_at)
                VALUES
                ('{$name}', '{$description}', '{$value}', '{$photo}', '{$quantity}', '{$categoryId}', '{$createdAt}')
            ";

            $result = $connection->prepare($query);
            $result->execute();

            echo 'Produto adicionado!';
        }

        $result = $connection->prepare('SELECT * FROM tb_category');
        $result->execute();

        parent::render('product/add', $result);
    }

    public function editAction(): void
    {
        $id = $_GET['id'];

        $connection = Connection::getConnection();
        
        if($_POST) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $value = $_POST['value'];
            $photo = $_POST['photo'];
            $quantity = $_POST['quantity'];

            $query = "UPDATE tb_product SET
                        name='{$name}',
                        description='{$description}',
                        value='{$value}',
                        photo='{$photo}',
                        quantity='{$quantity}'
                    WHERE id='{$id}'
            ";

            $resultUpdate = $connection->prepare($query);
            $resultUpdate->execute();

            echo 'Produto atualizado!';
        }

        $product = $connection->prepare("SELECT * FROM tb_product WHERE id='{$id}'");
        $product->execute();

        parent::render('product/edit', [
            'product' => $product->fetch(\PDO::FETCH_ASSOC),
        ]);
    }

    public function removeAction(): void
    {
        $id = $_GET['id'];

        $connection = Connection::getConnection();

        $result = $connection->prepare("DELETE FROM tb_product WHERE id='{$id}'");
        $result->execute();

        parent::renderMessage('Produto excluído!');
    }

    public function reportAction(): void
    {
        $connection = Connection::getConnection();
        
        $result = $connection->prepare('SELECT prod.id, prod.name, prod.quantity, cat.name as category FROM tb_product INNER JOIN tb_category cat ON prod.category_id = cat.id');
        $result->execute();

        $content = '';

        while($product = $result->fetch(\PDO::FETCH_ASSOC)){
            extract($product);

            $content .= "
                <tr>
                    <td>{$id}</td>
                    <td>{$name}</td>
                    <td>{$quantity}</td>
                    <td>{$category}</td>
                </tr>
            ";
        }
        
        $html = "
            <h1>Relatorios de Produtos no Estoque</h1>
            
            <table border='1' width='100%'>
                <thead>
                    <tr>
                        <th>#ID</th>
                        <th>Nome</th>
                        <th>Quantidade</th>
                        <th>Categoria</th>
                    </tr>
                </thead>

                <tbody>
                    $content
                </tbody>
            </table>
        ";
        

        $pdf = new Dompdf();
        $pdf->loadHtml($html);

        $pdf->render();
	
	    $pdf->stream();
    }
}