<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?>
<?php 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $ID = $_POST['id_utilisateur'];
    $email = $_POST['email_utilisateur'];
    $prenom = $_POST['prenom_utilisateur'];
    $nom = $_POST['nom_utilisateur'];
    $image = $_POST['photo_utilisateur'];
    $rank = $_POST['rank'];
    $mot_de_passe = $_POST['mot_de_passe'];

    // Vérifier si une nouvelle photo a été soumise
    if (!empty($_FILES["image"]["name"])) {
        // Récupérer les informations de la photo
        $image = $_FILES['image']['name'];
        $photo_utilisateur_temp = $_FILES['image']['tmp_name'];

        // Déplacer la photo dans le dossier utilisateur
        if(!file_exists("../../image/utilisateur/" . $image)) {
            move_uploaded_file($photo_utilisateur_temp, "../../image/utilisateur/" . $image);
        }
    }

    require '../../admin/database.php'; 
    $db = Database::connect();

    $statement = $db->prepare('SELECT email FROM utilisateurs WHERE ID_utilisateur = ?'); 
    $statement->execute(array($ID));                                             
    $utilisateur = $statement->fetch();
    if (!empty($email)) {
        $email = strtolower($email); // email transformé en minuscule
        $check1 = $db->prepare('SELECT email FROM utilisateurs WHERE email = ? AND ID_utilisateur != ?'); 
        $check1->execute(array($email, $ID));                                            
        $data1 = $check1->fetch();                                                   
        $row1 = $check1->rowCount();
        if (!empty($prenom)) {
            if (!empty($nom)) {
                if (!empty($image)) {
                    $imageExtension = strtolower(pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION));
                    if (($imageExtension == "jpg" || $imageExtension == "png" || $imageExtension == "jpeg")) { 
                        if (!empty($mot_de_passe)) {
                            if ($row1 == 0) { 
                                $hashed_password = password_hash($mot_de_passe, PASSWORD_DEFAULT);
                                $statement = $db->prepare("UPDATE utilisateurs SET email = ?, mot_de_passe = ?, prenom = ?, nom = ?, photo = ?, rank = ? WHERE ID_utilisateur = ?");
                                $statement->execute(array($email, $hashed_password, $prenom, $nom, $image, $rank, $ID));
                                Database::disconnect();
                                echo '<div class="cadre4">';
                                echo 'Votre profil a été modifié avec succès. Pour voir les changements, veuillez vous déconnecter et vous reconnecter.';
                                echo '<form action="../Connection.php"><button class="order-btn">Déconnexion</button></form>';
                                echo '</div>';  
                                session_destroy();
                            } else { 
                                echo '<br/><br/><br/><div class="cadre4">L\'adresse email est déjà utilisée.</div>';
                            }
                        } else { 
                            echo '<br/><br/><div class="cadre4">Vous n\'avez pas rempli le champ mot de passe</div>';
                        }
                    } else { 
                        echo '<br/><br/><div class="cadre4">Vous n\'avez pas mis le bon format ou n\'avez pas mis d\'image</div>';
                    }
                } else {
                    if (!empty($mot_de_passe)) {
                        if ($row1 == 0) { 
                            $hashed_password = password_hash($mot_de_passe, PASSWORD_DEFAULT);
                            $statement = $db->prepare("UPDATE utilisateurs SET email = ?, mot_de_passe = ?, prenom = ?, nom = ?, rank = ? WHERE ID_utilisateur = ?");
                            $statement->execute(array($email, $hashed_password, $prenom, $nom, $rank, $ID));
                            Database::disconnect();
                            echo '<div class="cadre2">';
                            echo 'Votre profil a été modifié avec succès. Pour voir les changements, veuillez vous déconnecter et vous reconnecter.';
                            echo '<form action="../Connection.php"><button class="order-btn">Déconnexion</button></form>';
                            echo '</div>';  
                            session_destroy();
                        } else { 
                            echo '<br/><div class="cadre2">L\'adresse email est déjà utilisée</div>';
                        }
                    } else { 
                        echo '<br/><div class="cadre2">Vous n\'avez pas rempli le champ mot de passe</div>';
                    }
                }      
            } else { 
                echo '<br/><div class="cadre2">Vous n\'avez pas rempli le champ nom</div>';
            }
        } else { 
            echo '<br/><div class="cadre2">Vous n\'avez pas remplile champ email</div>';
        }
        } else {
        //Si les deux champs sont remplis, on insère les données dans la base de données
        $insert = "INSERT INTO formulaire (nom, email, sujet, message) VALUES ('$nom', '$email', '$sujet', '$message')";
        $result = mysqli_query($conn, $insert);
        // Vérifie si l'insertion a réussi
        if ($result) {
        echo '<br/><div class="cadre">Merci de nous avoir contacté, nous vous répondrons dans les plus brefs délais !</div>';
        } else {
        echo "<br/><div class='cadre2'>Une erreur s'est produite, veuillez réessayer plus tard</div>";
        }
        }
        }
        ?>
    </body>
</html>