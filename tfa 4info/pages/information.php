<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>
    <center><br/>
        <div class="cadre">
            <h3>
            <h1>Informations</h1>
        <ul>
            <li>Notre numéro de téléphone : 0496 00 00 00 00. </li><br/>
            <li>Notre email : lifear@gmail.com ou lifear-support@gmail.com.</li><br/>
            <li>Nous sommes ouverts de 8h - 12h et 13h - 17h du lundi au vendredi <br/> et de 9h30 - 13h30 le samedi et dimanche.</li><br/>
            <li>En cas de problème, veuillez nous le dire le plus vite possible pour pouvoir le régler.</li>

        <li><h2>Envoyer un message aux administrateurs :</h2>
        </ul>
        <?php
require '../admin/database.php';

// Vérifie si le formulaire a été soumis
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Récupère les données du formulaire
    $name = $_POST['name'];
    $prenom = $_POST['prenom'];
    $photo = $_POST['photo'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $etoile = $_POST['rating'];
    // Échapper les caractères spéciaux dans le message
    $message = htmlspecialchars($message);

    // Connexion à la base de données
    $db = Database::connect();

    // Prépare la requête d'insertion avec des paramètres liés
    $sql = "INSERT INTO messages (name, prenom, photo, email, message, etoile) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $db->prepare($sql);

    // Exécute la requête en passant les valeurs des paramètres
    $stmt->execute([$name, $prenom, $photo, $email, $message, $etoile]);

    // Ferme la connexion à la base de données
    Database::disconnect();

    // Affiche un message de confirmation avec la notation
    echo "Message envoyé avec succès. Note : " . $etoile . "</br>";
}
?>

<script src="../lifear.js"></script>

<?php
if (isset($_SESSION['rank']) && in_array($_SESSION['rank'], array(1, 2, 3))) {
    $displayForm = true;
} else {
    $displayForm = false;
}
?>

<?php if ($displayForm): ?>
    <form class="message" action="information.php" method="post">
        <input type="hidden" id="photo" name="photo" value="<?php echo htmlspecialchars($_SESSION['photo']); ?>" required>
        <input type="hidden" id="prenom" name="prenom" value="<?php echo htmlspecialchars($_SESSION['prenom']); ?>" required>
        <input type="hidden" id="email" name="email" value="<?php echo htmlspecialchars($_SESSION['email']); ?>" required></br>
        <label for="message">Message :</label></br>
        <textarea id="message" name="message" class="textmessage" required></textarea></br>
        <input type="hidden" id="name" name="name" value="<?php echo htmlspecialchars($_SESSION['nom']); ?>" required></br>
        

<!-- Champ de notation -->
<div class="star-rating">
  <input type="radio" id="star1" name="rating" value="5" required/>
  <label for="star1">&#9733;</label>
  <input type="radio" id="star2" name="rating" value="4" />
  <label for="star2">&#9733;</label>
  <input type="radio" id="star3" name="rating" value="3" />
  <label for="star3">&#9733;</label>
  <input type="radio" id="star4" name="rating" value="2" />
  <label for="star4">&#9733;</label>
  <input type="radio" id="star5" name="rating" value="1" />
  <label for="star5">&#9733;</label>
</div>


</br>

        <!-- Bouton de confirmation -->
        <a type="submit" class="order-btn" onclick="OpenConfirmation()">Envoyer</a></br>

        <!-- Fenêtre de confirmation générique pour la modification -->
        <div class="confirmation-popup" id="confirmation-popup">
            <div class="confirmation-form" id="popupForm">
                <h2>Êtes-vous sûr de vouloir envoyer ce message ?</h2>
                <form action="information.php" class="confirmation-container" method="post">
                    <button type="submit" class="confirmation-button-oui">Confirmer</button>
                </form>
                <!-- Utilisation de la fonction closeConfirmation pour fermer la fenêtre de confirmation -->
                <a class="confirmation-button-non" onclick="CloseConfirmation()">Non, annuler</a>
            </div>
        </div>
    </form>
<?php else: ?>
    <p>Vous devez être connecté en tant qu'utilisateur pour envoyer un message aux administrateurs.</p>
<?php endif; ?>

        <br/>&nbsp;
    </div>
</body>
</html>
