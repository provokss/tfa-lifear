<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?>

            						   <?php
// Vérifier si l'utilisateur est connecté et s'il a le rang 1
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1)) {
    // Afficher le contenu de la page
 } else {
    // Rediriger l'utilisateur vers une page d'erreur ou de connexion
    header('Location:../../pages/erreur.php');
    exit();
 }
// Le code ci-dessous ne sera exécuté que si l'utilisateur est connecté et a le rang 1

?><br/>
    <script src="../../lifear.js"></script>
    <center class="cadre">
    <br/><br/><h1><strong>Liste des messages</strong></h1><br/><br/>
    <h2>messages</h2>
    <center>
        <table>
            <thead>
                <tr>		
                    <th>photo</th>
                    <th>Nom et prénom</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Note</th>
                    <th>Modifier</th>
                </tr>
            </thead>
            <tbody>
            <?php
            require '../../admin/database.php';
            $db = Database::connect();
            $statement = $db->prepare('SELECT id, name, prenom, CONCAT(prenom, " - ", name) as nom, photo, email, message, etoile FROM messages');
            $statement->execute();

            // Ajout de la balise div pour la fenêtre de confirmation de suppression
            echo '<div class="confirmation-popup" id="confirmation"></div>';

            while ($messages = $statement->fetch()) {

                echo '<tr>';
                echo '<td><img src="../../image/utilisateur/'. $messages['photo'] . '" width="170px" height="130px"></td>';
                echo '<td>' . $messages['nom'] . '</td>';
                echo '<td>' . $messages['email'] . '</td>';
                echo '<td>' . $messages['message'] . '</td>';
                echo '<td>';
                // Affichage des étoiles en fonction de la note
                for ($i = 1; $i <= 5; $i++) {
                    echo '<span class="star">';
                    if ($i <= $messages['etoile']) {
                        echo '&#9733;';
                    }
                    echo '</span>';
                }
                echo '</td>';
                echo '<td>';
                // Utilisation de l'ID de l'utilisateur pour l'ID de la fenêtre de confirmation
                echo '<button class="order-btn" onclick="openConfirmation(' . $messages['id'] . ')"><strong>Supprimer</strong></button>';
                echo '</td>';
                echo '</tr>';

                // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
                echo '<div class="confirmation-popup" id="confirmation-' . $messages['id'] . '">';
                echo '<div class="confirmation-form" id="popupForm">';
                echo '<h2>Êtes-vous sûr de vouloir supprimer ce message ?</h2>';
                echo '<form action="delete.php" class="confirmation-container" method="post">';
                echo '<input type="hidden" name="id" value="' . $messages['id'] . '">';
                echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
                echo '</form>';

                // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
                echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $messages['id'] . ')">Non, annuler</button>';
                echo '</div>';
                echo '</div>';
            }
            ?>
            </tbody>
        </table>
    </center>
</center>

