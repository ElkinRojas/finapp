<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once "conexion.php";
    $question = $_POST['question'];
    $answer = $_POST['answer'];
    $user = $_POST['user'];
    $type = $_POST['type'];
    $query="INSERT INTO questions (user, type, question, answer) VALUES ('".$user."', '".$type."', '".$question."', '".$answer."')";
    $resultado = $mysql->query($query);
    if ($resultado==true){
        echo "El registro se inserto de forma exitosa";
    } else {
        echo "Error al insertar el registro";
    }
}
?>