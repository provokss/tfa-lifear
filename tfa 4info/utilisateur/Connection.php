<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>

            <!-- formulaire de connection -->

           <br/> <div class="cadre">
            <form action="connection_utilisateur.php" method="post" >     
                <div class="form-container" >
                    <h1>Connexion</h1>
                    <h2>Email</h2>
                    <input type="email" name="email"  placeholder="votre email" required><br/>
                    <h2>Mot de passe</h2>
                    <input type="password" name="password"  placeholder="votre mot de passe" required><br/>
                    <p></p>
                    <button type="submit" class="order-btn">Connexion</button>
                    <p></p>
                    <a href="inscription.php" class="order-btn">Inscription</a>
                </div>   
            </form>
            </div>

    </body>
</html>



