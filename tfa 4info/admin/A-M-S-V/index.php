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

?><br/>
<div class="cadre">

			<p><center><h1><strong>Listes des articles</strong></h1><a href="ajouter.php"><span>
			<button class="order-btn"></span>Ajouter</button></a></center></p>
            <?php
try{
    
    $pdoConnect = new PDO("mysql:host=localhost;dbname=TFA provins dhoryan 4info","root","");
} catch (PDOException $ex) {
    echo $ex->getMessage();
    exit();
}

$pdoQuery = "SELECT * FROM article";

$pdoResult = $pdoConnect->query($pdoQuery);

$pdoRowCount = $pdoResult->rowCount();

echo "<h4>Le nombres d'articles est $pdoRowCount.</h4>";
?>
	<table>
		<thead>
			<tr>
				<th>images des articles</th>				
                <th>nom</th>
				<th>Description</th>
                <th>types des objets</th>
				<th>Prix</th>
				<th>modifications</th>
			</tr>
		</thead>
		<script src="../../lifear.js"></script>
		<tbody>
		<?php
			require '../database.php';
				$db=Database::connect();
					$statement=$db->query('SELECT article.id_article, article.name, article.description, article.price, article.image,id_objets.types_produits AS type FROM article left JOIN id_objets ON article.type=id_objets.id_types ');
                    while($item=$statement->fetch()){

							echo'<tr>';                            
                            echo'<td><h3><img src="../../pages/article/'.$item['image'].'" width="200px" height="200px"></h3></td>';
							echo'<td><h5>'.$item['name'].'</h5></td>';
							echo'<td><h4>'.$item['description'].'</h4></td>';	
                            echo'<td><h3>'.$item['type'].'</h3></td>';
							echo'<td><h3>'.$item['price'].'€</h3></td>';						
							echo'<td width=330>';
							echo'<a href="view.php?id='.$item['id_article'].'"><button class="order-btn"><span></span>Voir</button></a>&nbsp;&nbsp;';
							echo'<a href="update.php?id='.$item['id_article'].'"><button class="order-btn"><span></span>Modifier</button></a>&nbsp;&nbsp;';
                            echo '<button class="order-btn" onclick="openConfirmation(' . $item['id_article'] . ')"><strong>Supprimer</strong></button>';
                            echo '</td>';
                            echo '</tr>';
                        
                            // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
                            echo '<div class="confirmation-popup" id="confirmation-' . $item['id_article'] . '">';
                            echo '<div class="confirmation-form" id="popupForm">';
                            echo '<h2>Êtes-vous sûr de vouloir supprimer cet article ?</h2>';
                            echo '<form action="delete.php" class="confirmation-container" method="post">';
                            echo '<input type="hidden" name="id" value="' . $item['id_article'] . '">';
                            echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
                            echo '</form>';
                            
                            // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
                            echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $item['id_article'] . ')">Non, annuler</button>';
                            echo '</div>';
                            echo '</div>';
                            echo'</td>';
                            
                            echo'</tr>';
                    }
						Database::disconnect();
						?>
		</tbody>
		</table>
						
							</div>
						</div>
                </body>
</html>