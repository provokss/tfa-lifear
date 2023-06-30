<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?> -
<?php 
    $email = $_POST['email']; 
    $password = $_POST['mot_de_passe'];
    $prenom = $_POST['prenom'];
    $nom = $_POST['nom'];
    $rank = $_POST['rank'];
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
    $image = $_FILES['image']['name'];
    $image_path = '../../image/' . basename($image);
    $image_extension = pathinfo($image_path, PATHINFO_EXTENSION);

    require '../../admin/database.php'; 
    $db = Database::connect();

    if (!empty($email) && !empty($prenom) && !empty($nom) && !empty($image) && !empty($password)) {
        $email = strtolower($email); // email transformé en minuscule

        $check_email = $db->prepare('SELECT email FROM utilisateurs WHERE email = ?');   
        $check_email->execute(array($email));                                            
        $row_count = $check_email->rowCount(); 

        if ($row_count == 0) { 
            if ($image_extension == "jpg" || $image_extension == "png" || $image_extension == "jpeg") { 
                $hashed_password = password_hash($password, PASSWORD_DEFAULT);

                $statement = $db->prepare("INSERT INTO utilisateurs (email, mot_de_passe, prenom, nom, photo, rank) VALUE(?,?,?,?,?,?)");
                $statement->execute(array($email,$hashed_password,$prenom,$nom,$image,$rank));
                Database::disconnect();
                
                echo '<div class="cadre2">';
                echo 'l\'utilisateur a bien été créé';
                echo '<form action="index.php">'.'<button class="order-btn">admin</button>'.'</form></div>'; 
            } else {
                echo '<br/><br/><div class="cadre2">Vous n\'avez pas mis le bon format ou n\'avez pas mis d\'image';
                echo '<form action="index.php">'.'<button class="order-btn">admin</button>'.'</form></div>'; 
            }
        } else {
            echo '<br/><br/><br/><div class="cadre2">\'adresse mail existe déjà';
            echo '<form action="index.php">'.'<button class="order-btn">admin</button>'.'</form></div>'; 
        }
    } else {
        echo '<br/><br/><div class="cadre2">Veuillez remplir tous les champs';
        echo '<form action="index.php">'.'<button class="order-btn">admin</button>'.'</form></div>'; 
    }
?>

    </body>
</html>