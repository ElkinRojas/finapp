<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once "conexion.php";
    $document = $_POST['document'];
    $name = $_POST['name'];
    $password = $_POST['password'];
    $query="INSERT INTO users (document,name,password) VALUES ('".$document."','".$name."', '".$password."')";
    $resultado = $mysql->query($query);
    if ($resultado==true){
        echo "El usuario se inserto de forma exitosa";
    } else {
        echo "Error al insertar el usuario";
    }
}
?>