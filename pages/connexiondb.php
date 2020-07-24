<?php

    try
    {
        $pdo = new PDO("mysql:connexiondb;host=localhost;dbname=gestion_stag","root","");
    }catch(Exception $e){
        die('Erreur de conn' .$e -> getMessage())
    }

?>