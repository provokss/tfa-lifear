<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
	
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?> -
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
<?php
require '../database.php';

if(!empty($_GET['id']))
{
	$id=checkInput($_GET['id']);
}

$nameError=$descriptionError=$priceError=$imageError=$typeError=$name=$description=$price=$type=$image="";

if(!empty($_POST))
{
    $name=checkInput($_POST['name']);
    $description=checkInput($_POST['description']);
    $price=checkInput($_POST['price']);
    $type=checkInput($_POST['type']);
    $image=checkInput($_FILES['image']['name']);
    $imagePath='../../pages/article/'.basename($image);
    $imageExtension=pathinfo($imagePath, PATHINFO_EXTENSION);
	$isSuccess=true;
	    
	if(empty($name))
    {
		$nameError='Ce champ ne peut être vide';
		$isSuccess=false;
	}
	
	if(empty($description))
    {
		$descriptionError='Ce champ ne peut être vide';
		$isSuccess=false;
	}
	
	if(empty($price) || $price < 1)
    {
		$priceError='Le prix doit être supérieur ou égal à 1';
		$isSuccess=false;
	}
	
	if(empty($type))
    {
		$typeError='Ce champ ne peut être vide';
		$isSuccess=false;
	}
	
	if(empty($image))
    {
		$isImageUpdated=false;
	}
	else
	{
		$isImageUpdated=true;
		$isUploadSuccess=true;
		if($imageExtension != "jpg" && $imageExtension != "png" && $imageExtension !="jpeg" && $imageExtension!="gif")
		{
			$imageError="Les fichiers autorises sont: .jpg, .jpeg, .png, .gif";
			$isUploadSuccess=false;
		}
		if($_FILES["image"]["size"]>5000000)
		{
			$imageError="Le fichier ne doit pas depasser les 500KB";
			$isUploadSuccess=false;
		}
	}
	
	if(($isSuccess && $isImageUpdated && $isUploadSuccess) || ($isSuccess && !$isImageUpdated))
	{
		$db=Database::connect();
		if($isImageUpdated)
		{
			move_uploaded_file($_FILES['image']['tmp_name'], $imagePath);
			$statement=$db->prepare("UPDATE article SET name = ?, description = ?, price = ?, type = ?, image = ? WHERE id_article = ?");
			$statement->execute(array($name,$description,$price,$type,$image,$id));
		}
		else
		{
			$statement=$db->prepare("UPDATE article SET name = ?, description = ?, price = ?, type = ? WHERE id_article = ?");
			$statement->execute(array($name,$description,$price,$type,$id));
		}
		Database::disconnect();
		header("Location:index.php");
	}
	else if($isImageUpdated && !$isUploadSuccess)
	{
		$db=Database::connect();
		$statement=$db->prepare("SELECT image FROM article WHERE id_article= ?");
		$statement->execute(array($id));
		$item=$statement->fetch();
		$image=$item['image'];
	
		Database::disconnect();
	}
}
else
{
	$db=Database::connect();
	$statement=$db->prepare("SELECT * FROM article WHERE id_article= ?");
	$statement->execute(array($id));
	$item=$statement->fetch();
	$name=$item['name'];
	$description=$item['description'];
	$price=$item['price'];
	$type=$item['type'];
	$image=$item['image'];
	
	Database::disconnect();
	
}
function checkInput($data)
{
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}
?>
<script src="../../lifear.js"></script>
<center>
	<div>
		<div>
			<div class="cadre">
				<h1><strong>Modifier un item</strong></h1>
				<br>
				<form role="form" action="<?php echo 'update.php?id='.$id; ?>" method="post" enctype="multipart/form-data">
					<div>
						<label for="name">Nom:</label>
						<input type="text" id="name" name="name" placeholder="Nom" value="<?php echo $name; ?>" required>    
						<span><?php echo $nameError; ?></span>    
					</div>
					<div>
						<label for="description">Description:</label>
						<input type="text" id="description" name="description" placeholder="Description" value="<?php echo $description; ?>" required>    
						<span><?php echo $descriptionError; ?></span>    
					</div>
					<div>
						<label for="price">Prix (en €):</label>
						<input type="number" step="0.01" id="price" name="price" placeholder="Prix" value="<?php echo $price; ?>" required>    
						<span><?php echo $priceError; ?></span>    
					</div>
					<div>
						<label for="type">Type de l'article:</label>
						<select id="type" name="type">
							<?php
							$db = Database::connect();
							foreach($db->query('SELECT * FROM id_objets') as $row)
							{
								echo '<option value="'.$row['id_types'].'" '.(($type == $row['id_types']) ? 'selected' : '').'>'.$row['types_produits'].'</option>';
							}
							Database::disconnect();
							?>
						</select>
						<span><?php echo $typeError; ?></span>    
					</div>
					<div>
						<label>Image actuelle de l'article:</label>
						<p><img src="../../pages/article/<?php echo $image; ?>" width="250px" height="250px"></p>
						<label>Sélectionner une image:</label>
							<input type="file" id="image" name="image" required>
							<span><?php echo $imageError; ?></span>    
					</div>
					<div>
						<span></span>
						<a class="order-btn" <?php echo 'onclick="OpenConfirmation()" '?>>Modifier</a>
						<a href="index.php" class="order-btn">Retour</a>

						<!-- Fenêtre de confirmation générique pour la modification -->
						<div class="confirmation-popup" id="confirmation-popup">
							<div class="confirmation-form" id="popupForm">
								<h2>Êtes-vous sûr de vouloir modifier ?</h2>
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
		</div>
	</div>
</center>
</body>
</html>
