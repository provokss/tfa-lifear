<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?></br>
<script src="../../lifear.js"></script>
<?php

// Vérifier si l'utilisateur est connecté et s'il a le rang 1, 2 et 3
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1 || $_SESSION['rank'] == 2 || $_SESSION['rank'] == 3)) {
    // Afficher le contenu de la page
 } else {
    // Rediriger l'utilisateur vers une page d'erreur ou de connexion
    header('Location:../../pages/connecte_toi.php');
    exit();
 }
// Le code ci-dessous ne sera exécuté que si l'utilisateur est connecté et a le rang 1, 2 et 3

?>
<center class="cadre">
    <?php
    require '../../admin/database.php';
    if(!empty($_GET['utilisateur']))
    {
        $ID=$_GET['utilisateur'];
    }

    $db=Database::connect();
    $statement=$db->prepare("SELECT ID_utilisateur, email, mot_de_passe, prenom, nom, photo, rank
                            FROM utilisateurs WHERE ID_utilisateur=?");
    $statement->execute(array($ID));
    $utilisateur=$statement->fetch();

    echo '<div class="container-inscription">';
    echo '<form action="update-utilisateur2.php?utilisateur='.$utilisateur['ID_utilisateur'].'" method="post" enctype="multipart/form-data">'; 
        echo '<div class="form-container">';
            echo '<h1>Modification</h1>';
            echo '</select>';
            echo '<h2>Email</h2>';
            echo '<input type="email" name="email" value="'.$utilisateur['email'].'" placeholder="votre email" required><br/>';
            echo '<h2>Prénom</h2>';
            echo '<input type="text" name="prenom" value="'.$utilisateur['prenom'].'" placeholder="votre prénom" required><br/>';
            echo '<h2>Nom</h2>';
            echo '<input type="text" name="nom" value="'.$utilisateur['nom'].'" placeholder="votre nom" required><br/>';
            echo '<h2>Mot de passe</h2>';
            echo '<input type="text" name="mot_de_passe" placeholder="votre mot de passe" required><br/>';
            echo '<h2>Photo de Profil</h2>';
            echo '<img src="../../image/utilisateur/'.$utilisateur['photo'].'" width="100" height="100" alt="photo de profil" > </img><br/><br/>';
            echo $utilisateur['photo'].'<br/><br/>';
            echo '<input type="file" name="image" value="'.$utilisateur['photo'].'"required><br/><br/>';
            echo '<p class="hide">'.$utilisateur['rank'].'</p>';
            echo '<input type="hidden" name="rank" value="'.$utilisateur['rank'].'">';
            echo '<form action="update-utilisateur2.php" method="post">';
            // Autres champs de formulaire ici
            echo '<span class="order-btn" onclick="openConfirmation(' . $utilisateur['ID_utilisateur'] . ')">Modifier</span>';
// Ajout de la fenêtre de confirmation de modification pour chaque utilisateur
echo '<div class="confirmation-popup" id="confirmation-' . $utilisateur['ID_utilisateur'] . '">';
echo '<div class="confirmation-form" id="popupForm">';
echo '<h2>Êtes-vous sûr de vouloir modifier cet utilisateur ?</h2>';
echo '<form action="update-utilisateur.php" class="confirmation-container" method="post">';
echo '<input type="hidden" name="id_utilisateur" value="' . $utilisateur['ID_utilisateur'] . '">';
echo '<input type="hidden" name="email_utilisateur" value="' . $utilisateur['email'] . '">';
echo '<input type="hidden" name="prenom_utilisateur" value="' . $utilisateur['prenom'] . '">';
echo '<input type="hidden" name="nom_utilisateur" value="' . $utilisateur['nom'] . '">';
echo '<input type="hidden" name="photo_utilisateur" value="' . $utilisateur['photo'] . '">';
echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
// Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $utilisateur['ID_utilisateur'] . ')">Non, annuler</button>';
echo '</div>';
echo '</div>';
echo '</form>';
$db=Database::connect();
?>
</body>
</html>