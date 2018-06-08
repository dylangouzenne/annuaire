<?php

// on se connecte à mysql :
try  
{
 $bdd = new PDO('mysql:host=localhost;dbname=annuaire;charset=utf8', 'dylan', 'Fmdph320');
}
// en cas d'erreur on affiche un message :
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

?>

