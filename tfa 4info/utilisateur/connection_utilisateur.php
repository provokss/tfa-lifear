<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 

<?php require '../navbar.php';?>
        <!-- contenue -->
<br/>
        <?php 
$email = $_POST['email']; 
$password = $_POST['password'];

require '..\admin\database.php'; 
$db=Database::connect();
$statement=$db->prepare('SELECT ID_utilisateur, email, mot_de_passe, date_inscription, prenom, nom, photo, rank FROM utilisateurs WHERE email = ? ');
$statement->execute(array($email));
$utilisateurs=$statement->fetch();

if (!empty($_POST['email'])) {
    if (!empty($_POST['password'])) {
        $email = strtolower($email); // email transformé en minuscule

        $check1 = $db->prepare('SELECT email, mot_de_passe FROM utilisateurs WHERE email = ?'); // Vérifier si l'e-mail existe et récupérer le mot de passe haché
        
        $check1->execute(array($email));
        $data1 = $check1->fetch();
        $row1 = $check1->rowCount();

        if ($row1 == 1) {
            if (password_verify($password, $data1['mot_de_passe'])) { // Vérifier le mot de passe haché
                $_SESSION['email'] = $email;
                $_SESSION['ID_utilisateur'] = $utilisateurs['ID_utilisateur'];
                $_SESSION['prenom'] = $utilisateurs['prenom'];
                $_SESSION['nom'] = $utilisateurs['nom'];
                $_SESSION['date_inscription'] = $utilisateurs['date_inscription'];
                $_SESSION['mot_de_passe'] = $utilisateurs['mot_de_passe'];
                $_SESSION['photo'] = $utilisateurs['photo'];
                $_SESSION['rank'] = $utilisateurs['rank'];

                header('Location:deconnection.php');
            }
            else {
                echo '<center><span class="cadre4">Le mot de passe n\'est pas correct !<a href="inscription.php" class="btn-quantite">Inscription</a></span class="cadre"></center>';
            }
        }
        else {
            echo '<center><span class="cadre4">L\'email n\'est pas correct ou vous n\'êtes pas inscrit ! <a href="inscription.php" class="btn-quantite">Inscription</a></span class="cadre"></center>';
        }
    }
    else {
        echo '<center><span class="cadre4">Vous n\'avez pas rempli le champ mot de passe !<a href="inscription.php" class="btn-quantite">Inscription</a></span class="cadre"></center>';
    }
}
else {
    echo '<center><span class="cadre4">Vous n\'avez pas rempli le champ email !<a href="inscription.php" class="btn-quantite">Inscription</a></span class="cadre"></center>';
}

Database::disconnect();
?>

</body>
</html>
