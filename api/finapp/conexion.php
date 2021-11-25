<?php
$mysql= new mysqli("localhost", "root", "", "finapp");
if ($mysql->connect_error){
    die("Error de conexión");
} else{
    //echo "Conexión exitosa";
}
?>