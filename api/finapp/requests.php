<?php
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    require_once 'conexion.php';
    $id = $_GET['id'];
    $query="SELECT * FROM requests WHERE id='".$id."'";
    $resultado=$mysql->query($query);
    if ($mysql->affected_rows > 0) {
        while ($row = $resultado->fetch_assoc()){
            $array=$row;
        }
        echo json_encode($array);
    } else {
        echo "No se encontro ese registro";
    }
    $resultado->close();
    $mysql->close();
}
?>