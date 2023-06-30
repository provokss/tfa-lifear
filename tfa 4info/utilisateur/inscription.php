<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>
            <!-- formulaire d'inscription -->

            <div class="cadre"><center>
    <form action="inscription_utilisateur.php" enctype="multipart/form-data" method="post">     
        <div class="form-container">
            <h1>Inscription</h1>
            <h2>Email</h2>
            <input type="email" name="email"  placeholder="votre email" required><br/>
            <h2>Prénom</h2>
            <input type="text" name="prenom"  placeholder="votre prénom" required><br/>
            <h2>Nom</h2>
            <input type="text" name="nom"  placeholder="votre nom" required><br/>
            <h2>Photo de Profil</h2>
            <input type="file" name="image"><br/><br/>
            <h2>Mot de passe</h2>
            <input type="password" name="mot_de_passe"  placeholder="votre mot de passe" required><br/>
            <p></p>
            <button type="submit" button class="order-btn">Inscription</button>
            
        </div>
    </form>
</center></div> 

    </body>
</html>