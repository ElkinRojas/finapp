<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include_once 'conexion.php';
    $document=trim($_POST['document']);
    $password=trim($_POST['password']);

    $query="SELECT * FROM users WHERE document='".$document."' AND password='".$password."'";
    $resultado = $mysql->query($query);

    if ( !empty($document) && !empty($password) ) {
        if ($mysql->affected_rows > 0) {
            while ($row = $resultado->fetch_assoc()){
                $array=$row['id'];
            }
            echo $array;
        } else {
            echo "Error al ingresar";
        }
    } else {
        echo "Todos los campos son obligatorios";
    }

    $mysql->close();
}
?>