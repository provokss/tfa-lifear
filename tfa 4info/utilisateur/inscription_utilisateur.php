<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>
        <!-- contenue -->
        <?php 
$email = $_POST['email']; 
$password = $_POST['mot_de_passe'];
$prenom = $_POST['prenom'];
$nom = $_POST['nom'];

$image = $_FILES['image']['name'];
$imagetype = '../../image/'.basename($image);
$imageExtension = pathinfo($imagetype, PATHINFO_EXTENSION);
       $photo_utilisateur_temp = $_FILES['image']['tmp_name'];

        // Déplacer la photo dans le dossier utilisateur
        if(!file_exists("../image/utilisateur/" . $image)) {
            move_uploaded_file($photo_utilisateur_temp, "../image/utilisateur/" . $image);
        }
 
require '../admin/database.php'; 
   
$db = Database::connect();

$check1 = $db->prepare('SELECT email FROM utilisateurs WHERE email = ?');   
$check1->execute(array($email));                                            
$data1 = $check1->fetch();                                                   
$row1 = $check1->rowCount();  

if (!empty($email)) {  
    
    $email = strtolower($email); // email transformé en minuscule
    if ($row1 != 1) {   
        if (!empty($prenom)) {
            if (!empty($nom)) {
                if (!empty($image) && ($imageExtension =="jpg" || $imageExtension =="png" || $imageExtension =="jpeg")) {   
                    if (!empty($password)) {
                        $rank = 3;
                        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

                        $statement = $db->prepare("INSERT INTO utilisateurs (email, mot_de_passe, prenom, nom, photo, rank) value(?,?,?,?,?,?)");
                        $statement->execute(array($email, $hashed_password, $prenom, $nom, $image, $rank));
                        Database::disconnect();
                        echo '<center><br/><br/><div class="cadre4">';
                        echo 'Merci de votre inscription sur lifear';
                        echo '</div></center>';
                    } else { echo '<center><br/><br/><span class="cadre4">Vous n\'avez pas rempli le champ mot de passe</span></center>';}
                } else { echo '<center><br/><br/><span class="cadre4">Vous n\'avez pas mis le bon format ou n\'avez pas mis d\'image</span></center>';}
            } else { echo '<center><br/><br/><span class="cadre4">Vous n\'avez pas rempli le champ nom</span></center>';}
        } else { echo '<center><br/><br/><span class="cadre4">Vous n\'avez pas rempli le champ prénom</span></center>';}
    } else { echo '<center><br/><br/><span class="cadre4">L\'adresse mail existe déjà</span></center>';}
} else { echo '<center><br/><br/><span class="cadre4">Vous n\'avez pas rempli le champ email</span></center>';}
?>

</body>
</html>
