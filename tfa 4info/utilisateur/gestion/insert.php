<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?> -
<script src="../../lifear.js"></script>
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

?></br>
<!-- formulaire d'inscription -->
<center>
    <div class="cadre">
        <form action="insert-utilisateur.php" method="post" enctype="multipart/form-data">     
            <div class="form-container">
                <h1>Ajout utilisateur</h1>
                <h2>Rank</h2>
                <select type="text" name="rank" size="1" required>
                    <option value="3" selected>Utilisateur</option>
                    <option value="4" selected>banni</option>
                    <option value="2">Admin</option>
                    <option value="1">Super-admin</option>
                </select>
                <h2>Email</h2>
                <input type="email" name="email" placeholder="Votre email" required><br/>
                <h2>Prénom</h2>
                <input type="text" name="prenom" placeholder="Votre prénom" required><br/>
                <h2>Nom</h2>
                <input type="text" name="nom" placeholder="Votre nom" required><br/>
                <h2>Mot de passe</h2>
                <input type="password" name="mot_de_passe" placeholder="Votre mot de passe" required><br/>
                <h2>Photo de Profil</h2>
                <input type="file" name="image" required><br/><br/>
                <p></p>
                <a type="submit" class="order-btn" onclick="OpenConfirmation()">Ajouter</a>
                <a href="index.php" class="order-btn">Retour</a>
                            <!-- Fenêtre de confirmation générique pour l'ajout -->
            <div class="confirmation-popup" id="confirmation-popup">
                <div class="confirmation-form" id="popupForm">
                    <h2>Êtes-vous sûr de vouloir ajouter cet utilisateur ?</h2>
                    <form action="modifier.php" class="confirmation-container" method="post">
                        <button type="submit" class="confirmation-button-oui">Confirmer</button>
                    </form>
                    <!-- Utilisation de la fonction closeConfirmation pour fermer la fenêtre de confirmation -->
                    <button type="button" class="confirmation-button-non" onclick="CloseConfirmation()">Non, annuler</button>
                </div>
            </div>
        </div>   
    </form>
</div>
</center>
</body>
</html>