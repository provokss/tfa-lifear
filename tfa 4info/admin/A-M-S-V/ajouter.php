<?php
require '../database.php';

$nameError = $descriptionError = $priceError = $imageError = $categoryError = $name = $description = $price = $type = $image = "";

if (!empty($_POST)) {
    $name = checkInput($_POST['name']);
    $description = checkInput($_POST['description']);
    $price = checkInput($_POST['price']);
    $type = checkInput($_POST['type']);

// Vérification de la présence des champs requis
if (empty($name)) {
    $nameError = 'Le champ nom ne peut être vide';
}

if (empty($description)) {
    $descriptionError = 'Le champ description ne peut être vide';
}

if (empty($price)) {
    $priceError = 'Le champ prix ne peut être vide';
} elseif ($price < 1) {
    $priceError = 'Le prix minimum est de 1';
}

if (empty($type)) {
    $categoryError = 'Le champ type ne peut être vide';
}


    // Vérification de l'image
    if (!empty($_FILES['image']['name'])) {
        $image = checkInput($_FILES['image']['name']);
        $imagePath = '../../pages/article/' . basename($image);
        $imageExtension = pathinfo($imagePath, PATHINFO_EXTENSION);

        // Vérification de l'extension de l'image
        $allowedExtensions = array("jpg", "jpeg", "png", "gif");
        if (!in_array($imageExtension, $allowedExtensions)) {
            $imageError = "Les fichiers autorisés sont : .jpg, .jpeg, .png, .gif";
        }

        // Vérification si le fichier existe déjà
        if (file_exists($imagePath)) {
            $imageError = "Le fichier existe déjà";
        }

        // Vérification de la taille de l'image
        $maxFileSize = 5000000; // 5000KB
        if ($_FILES["image"]["size"] > $maxFileSize) {
            $imageError = "Le fichier ne doit pas dépasser 5000KB";
        }

        // Si aucune erreur n'a été détectée, télécharger l'image
        if (empty($imageError)) {
            move_uploaded_file($_FILES['image']['tmp_name'], $imagePath);
        } else {
            $imageError = 'Une erreur est survenue lors de l\'upload de l\'image';
        }
    }

    // Si aucune erreur n'a été détectée, enregistrer l'article dans la base de données
    if (empty($nameError) && empty($descriptionError) && empty($priceError) && empty($categoryError) && empty($imageError)) {
        $db = Database::connect();
        $statement = $db->prepare("INSERT INTO article (name, description, price, type, image) VALUES (?, ?, ?, ?, ?)");
        
        $statement->execute(array($name, $description, $price, $type, $image));
        Database::disconnect();
        header("Location:index.php");
        exit(); // Ajout de l'instruction exit() pour arrêter l'exécution du script après la redirection
    }
}

function checkInput($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>



<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
 <?php require '../../navbar.php';?>
<?php
// Vérifier si l'utilisateur est connecté et s'il a le rang 1 et 2
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1 || $_SESSION['rank'] == 2)) {
    // Afficher le contenu de la page
 } else {
    // Rediriger l'utilisateur vers une page d'erreur ou de connexion
    header('Location:../../pages/erreur.php');
    exit();
 }
// Le code ci-dessous ne sera exécuté que si l'utilisateur est connecté et a le rang 1 et 2

?>
<script src="../../lifear.js"></script>
<center><br/>
    <div class="cadre">
        <div>
            <h1><strong>Ajouter un article</strong></h1>
            <br>
            <form role="form" action="ajouter.php" method="post" enctype="multipart/form-data">
                <div>
                    <label>Nom :</label>
                    <input type="text" id="name" name="name" placeholder="Nom" value="<?php echo $name; ?>" required>    
                </div>
                <div>
                    <label>Description :</label>
                    <input type="text" id="description" name="description" placeholder="Description" value="<?php echo $description; ?>" required>    
                </div>
                <div>
                    <label>Prix (en €) :</label>
                    <input type="number" step="0.01" id="price" name="price" placeholder="Prix" value="<?php echo $price; ?>" required>    
                </div>
                <div>
                    <label>Type :</label>
                    <select id="type" name="type">
                        <?php
                            $db = Database::connect();
                            foreach($db->query('SELECT * FROM id_objets') as $row)
                            {
                                echo '<option value="'.$row['id_types'].'">'.$row['types_produits'].'</option>';
                            }
                            Database::disconnect();
                        ?>
                    </select> 
                </div>
                <div>
                    <label>Sélectionner une image :</label>
                    <input type="file"  id="image" name="image" required>
                </div>
                <div>
                    <button type="button" class="order-btn" onclick="OpenConfirmation()">Ajouter</button>
                    <a href="index.php" class="order-btn">Retour</a>
                    <!-- Fenêtre de confirmation générique pour l'ajout -->
                    <div class="confirmation-popup" id="confirmation-popup">
                        <div class="confirmation-form" id="popupForm">
                            <h2>Êtes-vous sûr de vouloir ajouter cet article ?</h2>
                            <form action="ajouter.php" class="confirmation-container" method="post">
                                <button type="submit" class="confirmation-button-oui">Confirmer</button>
                            </form>
                            <!-- Utilisation de la fonction closeConfirmation pour fermer la fenêtre de confirmation -->
                            <button type="button" class="confirmation-button-non" onclick="CloseConfirmation()">Non, annuler</button>
                        </div>
                    </div>
                </div>
            </form>   
        </div>  
    </div>
</center>
