<?php 
require_once("connexiondb.php");
$requete = "select * from filiere";
$resultatF=$pdo->query($requete);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <title>Gestion des filieres</title>
</head>
<body>
<?php include("menu.php"); ?>

    <div class="container">
        <div class="card-primary mt-4">

            <div class="card text-white bg-primary">Rechercher des filieres ...</div>
            <div class="card-body bg-success">
            Le contenu du panneau
            </div>
        </div>



            <div class="card text-white bg-primary mt-5">La liste des filieres</div>
            <div class="card-body bg-success">
                    <table>
                        <th>

                                <tr>

                                        <th>Id filiere</th>
                                        <th>Nom filiere</th>
                                        <th>Niveau</th>
                                        <th></th>
                                </tr>
                    
                        </th>

                    </table>            
</div>

        </div>
    </div>
    
</body>
</html>