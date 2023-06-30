<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>
<?php
// Vérifier si l'utilisateur est connecté et s'il a le rang 1, 2 et 3
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1 || $_SESSION['rank'] == 2 || $_SESSION['rank'] == 3)) {
    // Afficher le contenu de la page
 } else {
    // Rediriger l'utilisateur vers une page d'erreur ou de connexion
    header('Location:../pages/connecte_toi.php');
    exit();
 }
// Le code ci-dessous ne sera exécuté que si l'utilisateur est connecté et a le rang 1, 2 et 3

?>
<br/>
    <script src="../lifear.js"></script>
<center class="cadre">
    <?php
    
    require '../admin/database.php';
    $db = Database::connect();
    $id_utilisateur = $_SESSION['ID_utilisateur'];

    // Si le formulaire de modification de quantité a été soumis
    if (isset($_POST['modifier_quantite'])) {
        $id_panier = $_POST['id_panier'];
        $nouvelle_quantite = $_POST['quantite'];

        // Vérifier si la quantité est inférieure à 1 ou supérieure à 10
        if ($nouvelle_quantite <= 0) {
            echo "Erreur : La quantité doit être supérieure à 0.";
        } elseif ($nouvelle_quantite > 10) {
            echo "Erreur : La quantité ne peut pas dépasser 10.";
        } else {
            // Mettre à jour la quantité de l'article dans la base de données
            $statement = $db->prepare('UPDATE panier SET nombres = :nouvelle_quantite WHERE id_panier = :id_panier AND id_utilisateur = :id_utilisateur');
            $statement->execute(array('nouvelle_quantite' => $nouvelle_quantite, 'id_panier' => $id_panier, 'id_utilisateur' => $id_utilisateur));
        }
    }

    $statement = $db->prepare('SELECT *, COUNT(*) as count_items, SUM(prix_article * nombres) as total_price FROM panier WHERE id_utilisateur = :id_utilisateur');
    $statement->bindParam(':id_utilisateur', $id_utilisateur);
    $statement->execute();
    $panier = $statement->fetch();

    // Si le panier est vide, afficher un message approprié
    if ($panier['count_items'] == 0) {
        echo '<br/><h3>Votre panier est vide.</h3><br/>';
    }

    if ($panier['count_items'] > 0) {
        echo '<br/><br/><h1><strong>Votre panier (' . $panier['count_items'] . ' articles)</strong></h1><br/><br/>';
        echo '<h2>Total: ' . $panier['total_price'] . '€</h2>';
        echo '<center>	';
        echo '<table>';
        echo '<thead>';
        echo '<tr>';
        echo "<th>nom de l'article</th>";
        echo '<th>prix</th>';
        echo '<th>quantité</th>';
        echo '<th>Modifier</th>';
        echo '</tr>';
        echo '</thead>';
        echo '<tbody>';
    }

    $statement = $db->prepare('SELECT * FROM panier WHERE id_utilisateur = :id_utilisateur');
    $statement->bindParam(':id_utilisateur', $id_utilisateur);
    $statement->execute();

    while ($panier = $statement->fetch()) {
        echo '<tr>';
        echo '<td><center>' . $panier['name_article'] . '</center></td>';
        echo '<td>' . $panier['prix_article'] . ' €</td>';
        echo '<td>
            <form method="post" action="index.php">
                <input type="number" name="quantite" value="' . $panier['nombres'] . '" min="1" max="10">
                <input type="hidden" name="id_panier" value="' . $panier['id_panier'] . '">
                <input type="hidden" name="modifier_quantite" value="Modifier" class="btn-quantite">
            </form>
        </td>';

        echo '<td><button class="order-btn" onclick="openConfirmation(' . $panier['id_panier'] . ')"><strong>retirer du panier</strong></button>';
        echo '</td>';
        echo '</tr>';

        // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
        echo '<div class="confirmation-popup" id="confirmation-' . $panier['id_panier'] . '">';
        echo '<div class="confirmation-form" id="popupForm">';
        echo '<h2>Êtes-vous sûr de vouloir retirer cet article ?</h2>';
        echo '<form action="delete.php" class="confirmation-container" method="post">';
        echo '<input type="hidden" name="id" value="' . $panier['id_panier'] . '">';
        echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
        echo '</form>';

        // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
        echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $panier['id_panier']. ')">Non, annuler</button>';
        echo '</div>';
        echo '</div>';
        echo '</center>';
        echo '</tbody>';
    }
    Database::disconnect();
    ?>
</center>
</body>
</html>
