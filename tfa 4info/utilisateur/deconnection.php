<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="stylesheet" href="../../../TFA dhoryan provins 4info/site/<?php echo $stylesheet; ?>">
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>
</br>
						   <?php
// Vérifier si l'utilisateur est connecté et s'il a le rang 1, 2 et 3
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1 || $_SESSION['rank'] == 2 ||$_SESSION['rank'] == 3 )) {
    // Afficher le contenu de la page
 } else {
    // Rediriger l'utilisateur vers une page d'erreur ou de connexion
    header('Location:../pages/erreur.php');
    exit();
 }
// Le code ci-dessous ne sera exécuté que si l'utilisateur est connecté et a le rang 1, 2 et  3

?>
        <!-- contenue -->

        <?php 
    switch ($_SESSION['rank']) {
        case 1: $rank = 'Super-admin'; break;
        case 2: $rank = 'admin'; break;
        default: $rank = 'Utilisateur';
    }
    
?>
<?php

// Connexion à la base de données
require_once '../admin/database.php';
$db = Database::connect();

// Requête SQL pour récupérer la date d'inscription de l'utilisateur
$req = $db->prepare('SELECT YEAR(date_inscription) AS annee, MONTH(date_inscription) AS mois, DAY(date_inscription) AS jour FROM utilisateurs WHERE ID_utilisateur = ?');
$req->execute(array($_SESSION['ID_utilisateur']));
$data = $req->fetch();

// Affichage de la date d'inscription formatée
?>

<center>
<div class="cadre">
    <h1>Bienvenue sur Lifear : <?= $_SESSION['prenom'] ?> <?= $_SESSION['nom'] ?></h1>
    <strong>Votre Profil utilisateur :</strong><br>
    <center>
    <table class="utilisateur">
        <tr>
            <td class="image-utilisateur">
            Votre photo de profil : <br/>
            <img src="../image/utilisateur/<?= $_SESSION['photo'] ?>" alt="Photo de profil" width="450px"></td>
            <td>
                Votre rank :</br> <?= $rank ?></br>
                Votre nom :</br><?= $_SESSION['nom'] ?> <br/>
                Votre prénom :</br><?= $_SESSION['prenom'] ?></br>
                Votre email :</br> <?= $_SESSION['email'] ?></br>
                Votre date d'inscription :</br> <?= $_SESSION['date_inscription'] ?></br>
            </td>
        </tr>
    </table>    
    <form action="gestion/update2.php?utilisateur=<?= $_SESSION['ID_utilisateur']?>" method="post">
    <button type="submit" class="order-btn">Modifier</button>
    </form></br>
    <form method="POST" action="deconnection_utilisateur.php">
    <button type="submit" class="order-btn" value="detail">Deconnexion</button></br>
    </form>
  
</div>
</center>



    </body>
</html>