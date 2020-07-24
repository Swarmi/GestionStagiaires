<!-- ce code php permet de reorienter vers la page filieres, pour ajouter une commande de redirection, on utilise la méthode header
on ajoute le parametre location, on specifie le chemin d'acces de redirection de la page, ca va me redigerer vers le dossier pages et le ficher filieres. 
  -->
<!-- Prochaine étape : Créer une page où on va integrer nos menus, on utilisera toujours la meme mise en page, à savoir MENU + DIVISION RECHERCHE + DIVISION POUR LA LISTE, elle sera donc comosé de 3 parties distinctes -->
<?php 

header ("location:pages/filieres.php");

?>