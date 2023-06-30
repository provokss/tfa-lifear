<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?> -
<script src="../../lifear.js"></script>
	</br>
					       <!-- formulaire de connection -->
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

?>
<center class="cadre">
		<br/><br/><h1><strong>Listes des Utilisateurs</strong></h1><br/><br/>
		<form action="insert.php"><button class="order-btn">Ajouter Utilisateur</button></form><br/>
		<h2>Super-Admin</h2>
		<center>	
			<table>
				<thead>
					<tr>		
					<th>Photo</th>
						<th>Nom et Prenom</th>
						<th>Email</th>
						<th>Date inscription</th>
						<th>Modifier</th>
					</tr>
				</thead>
				<tbody>
					<?php
					require '../../admin/database.php';
    $db = Database::connect();    
    $statement = $db->prepare('SELECT ID_utilisateur, email, mot_de_passe, date(date_inscription) AS date, prenom, nom, CONCAT(prenom, " - ", nom) as name, photo, rank AS ranku FROM utilisateurs WHERE rank = ?');
    $statement->execute([1]);
                        // Ajout de la balise div pour la fenêtre de confirmation de suppression
    echo '<div class="confirmation-popup" id="confirmation"></div>';
                    // Compter le nombre d'utilisateurs ayant le rank égal à 3
    $utilisateurs_count = $statement->rowCount();

     echo "<h4><strong>Nombres de super admin : " . $utilisateurs_count . "</strong></h4><br/><br/>";

    while ($utilisateur = $statement->fetch()) {
    $rankU = 'ERREUR';

    switch ($utilisateur['ranku']) {
        case 3:
            $rankU = 'Utilisateur';
            break;
    }
    echo '<tr>';
    echo '<td><img src="../../image/utilisateur/' . $utilisateur['photo'] . '" width="50px" height="50px"></td>';
    echo '<td>' . $utilisateur['name'] . '</td>';
    echo '<td>' . $utilisateur['email'] . '</td>';
    echo '<td>' . $utilisateur['date'] . '</td>';
    echo '<td>';
    echo '<form action="update.php?utilisateur=' . $utilisateur['ID_utilisateur'] . '" method="post">';
    echo '<button type="submit" class="order-btn">Modifier</button>';
    echo '</form>';
    // Utilisation de l'ID de l'utilisateur pour l'ID de la fenêtre de confirmation
    echo '<button class="order-btn" onclick="openConfirmation(' . $utilisateur['ID_utilisateur'] . ')"><strong>Supprimer</strong></button>';
    echo '</td>';
    echo '</tr>';

    // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
    echo '<div class="confirmation-popup" id="confirmation-' . $utilisateur['ID_utilisateur'] . '">';
    echo '<div class="confirmation-form" id="popupForm">';
    echo '<h2>Êtes-vous sûr de vouloir supprimer cet utilisateur ?</h2>';
    echo '<form action="delete.php" class="confirmation-container" method="post">';
    echo '<input type="hidden" name="id_utilisateur" value="' . $utilisateur['ID_utilisateur'] . '">';
    echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
    echo '</form>';
    
    // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
    echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $utilisateur['ID_utilisateur'] . ')">Non, annuler</button>';
    echo '</div>';
    echo '</div>';
}

Database::disconnect();
?>

				</tbody>
			</table>
			<br/><br/><h2>Admin</h2>

			<table>
				<thead>
					<tr>
						<th>Photo</th>
						<th>Nom et Prenom</th>
						<th>Email</th>
						<th>Date inscription</th>
						<th>Modifier</th>
					</tr>
				</thead>
				<tbody>
				<?php
    $db = Database::connect();
    $statement2 = $db->prepare('SELECT ID_utilisateur, email, mot_de_passe, date(date_inscription) AS date, prenom, nom, CONCAT(prenom, " - ", nom) as name, photo, rank AS ranku FROM utilisateurs WHERE rank = ?');
    $statement2->execute([2]);

                // Ajout de la balise div pour la fenêtre de confirmation de suppression
    echo '<div class="confirmation-popup" id="confirmation"></div>';
                // Compter le nombre d'utilisateurs ayant le rank égal à 3
    $utilisateurs_count = $statement2->rowCount();
    echo "<h4><strong>Nombres d'admin : " . $utilisateurs_count . "</strong></h4><br/><br/>";
     while ($utilisateur2 = $statement2->fetch()) {
    $rankU = 'ERREUR';

    switch ($utilisateur2['ranku']) {
        case 3:
            $rankU = 'Utilisateur';
            break;
    }

    echo '<tr>';
    echo '<td><img src="../../image/utilisateur/' . $utilisateur2['photo'] . '" width="50px" height="50px"></td>';
    echo '<td>' . $utilisateur2['name'] . '</td>';
    echo '<td>' . $utilisateur2['email'] . '</td>';
    echo '<td>' . $utilisateur2['date'] . '</td>';
    echo '<td>';
    echo '<form action="update.php?utilisateur=' . $utilisateur2['ID_utilisateur'] . '" method="post">';
    echo '<button type="submit" class="order-btn">Modifier</button>';
    echo '</form>';
    // Utilisation de l'ID de l'utilisateur pour l'ID de la fenêtre de confirmation
    echo '<button class="order-btn" onclick="openConfirmation(' . $utilisateur2['ID_utilisateur'] . ')"><strong>Supprimer</strong></button>';
    echo '</td>';
    echo '</tr>';

    // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
    echo '<div class="confirmation-popup" id="confirmation-' . $utilisateur2['ID_utilisateur'] . '">';
    echo '<div class="confirmation-form" id="popupForm">';
    echo '<h2>Êtes-vous sûr de vouloir supprimer cet utilisateur ?</h2>';
    echo '<form action="delete.php" class="confirmation-container" method="post">';
    echo '<input type="hidden" name="id_utilisateur" value="' . $utilisateur2['ID_utilisateur'] . '">';
    echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
    echo '</form>';
    
    // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
    echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $utilisateur2['ID_utilisateur'] . ')">Non, annuler</button>';
    echo '</div>';
    echo '</div>';
}

Database::disconnect();
?>

				</tbody>
			</table>
			<br/><br/><h2>Utilisateurs</h2>
			<table>
				<thead>
					<tr>
					<th>Photo</th>
						<th>Nom et Prenom</th>
						<th>Email</th>
						<th>Date inscription</th>
						<th>Modifier</th>
					</tr>
				</thead>
				<tbody>
				<?php
$db = Database::connect();
$statement3 = $db->prepare('SELECT ID_utilisateur, email, mot_de_passe, date(date_inscription) AS date, prenom, nom, CONCAT(prenom, " - ", nom) as name, photo, rank AS ranku FROM utilisateurs WHERE rank = ?');
$statement3->execute([3]);

// Ajout de la balise div pour la fenêtre de confirmation de suppression
echo '<div class="confirmation-popup" id="confirmation"></div>';

// Compter le nombre d'utilisateurs ayant le rank égal à 3
$utilisateurs_count = $statement3->rowCount();

echo "<h4><strong>Nombres d'utilisateurs : " . $utilisateurs_count . "</strong></h4><br/><br/>";

while ($utilisateur3 = $statement3->fetch()) {
    $rankU = 'ERREUR';

    switch ($utilisateur3['ranku']) {
        case 3:
            $rankU = 'Utilisateur';
            break;
    }
    echo '<tr>';
    echo '<td><img src="../../image/utilisateur/' . $utilisateur3['photo'] . '" width="50px" height="50px"></td>';
    echo '<td>' . $utilisateur3['name'] . '</td>';
    echo '<td>' . $utilisateur3['email'] . '</td>';
    echo '<td>' . $utilisateur3['date'] . '</td>';
    echo '<td>';
    echo '<form action="update.php?utilisateur=' . $utilisateur3['ID_utilisateur'] . '" method="post">';
    echo '<button type="submit" class="order-btn">Modifier</button>';
    echo '</form>';
    // Utilisation de l'ID de l'utilisateur pour l'ID de la fenêtre de confirmation
    echo '<button class="order-btn" onclick="openConfirmation(' . $utilisateur3['ID_utilisateur'] . ')"><strong>Supprimer</strong></button>';
    echo '</td>';
    echo '</tr>';

    // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
    echo '<div class="confirmation-popup" id="confirmation-' . $utilisateur3['ID_utilisateur'] . '">';
    echo '<div class="confirmation-form" id="popupForm">';
    echo '<h2>Êtes-vous sûr de vouloir supprimer cet utilisateur ?</h2>';
    echo '<form action="delete.php" class="confirmation-container" method="post">';
    echo '<input type="hidden" name="id_utilisateur" value="' . $utilisateur3['ID_utilisateur'] . '">';
    echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
    echo '</form>';
    
    // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
    echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $utilisateur3['ID_utilisateur'] . ')">Non, annuler</button>';
    echo '</div>';
    echo '</div>';
}

Database::disconnect();
?>

</tbody>
			</table>
			<br/><br/><h2>bannis</h2>
			<table>
				<thead>
					<tr>
					<th>Photo</th>
						<th>Nom et Prenom</th>
						<th>Email</th>
						<th>Date inscription</th>
						<th>Modifier</th>
					</tr>
				</thead>
				<tbody>
				<?php
$db = Database::connect();
$statement4 = $db->prepare('SELECT ID_utilisateur, email, mot_de_passe, date(date_inscription) AS date, prenom, nom, CONCAT(prenom, " - ", nom) as name, photo, rank AS ranku FROM utilisateurs WHERE rank = ?');
$statement4->execute([4]);

// Ajout de la balise div pour la fenêtre de confirmation de suppression
echo '<div class="confirmation-popup" id="confirmation"></div>';

// Compter le nombre d'utilisateurs ayant le rank égal à 3
$utilisateurs_count = $statement4->rowCount();

echo "<h4><strong>Nombres de bannis: " . $utilisateurs_count . "</strong></h4><br/><br/>";

while ($utilisateur4 = $statement4->fetch()) {
    $rankU = 'ERREUR';

    switch ($utilisateur4['ranku']) {
        case 4:
            $rankU = 'bannis';
            break;
    }
    echo '<tr>';
    echo '<td><img src="../../image/utilisateur/' . $utilisateur4['photo'] . '" width="50px" height="50px"></td>';
    echo '<td>' . $utilisateur4['name'] . '</td>';
    echo '<td>' . $utilisateur4['email'] . '</td>';
    echo '<td>' . $utilisateur4['date'] . '</td>';
    echo '<td>';
    echo '<form action="update.php?utilisateur=' . $utilisateur4['ID_utilisateur'] . '" method="post">';
    echo '<button type="submit" class="order-btn">Modifier</button>';
    echo '</form>';
    // Utilisation de l'ID de l'utilisateur pour l'ID de la fenêtre de confirmation
    echo '<button class="order-btn" onclick="openConfirmation(' . $utilisateur4['ID_utilisateur'] . ')"><strong>Supprimer</strong></button>';
    echo '</td>';
    echo '</tr>';

    // Ajout de la fenêtre de confirmation de suppression pour chaque utilisateur
    echo '<div class="confirmation-popup" id="confirmation-' . $utilisateur4['ID_utilisateur'] . '">';
    echo '<div class="confirmation-form" id="popupForm">';
    echo '<h2>Êtes-vous sûr de vouloir supprimer cet utilisateur ?</h2>';
    echo '<form action="delete.php" class="confirmation-container" method="post">';
    echo '<input type="hidden" name="id_utilisateur" value="' . $utilisateur4['ID_utilisateur'] . '">';
    echo '<button type="submit" class="confirmation-button-oui">Confirmer</button>';
    echo '</form>';
    
    // Utilisation de l'ID de l'utilisateur pour fermer la fenêtre de confirmation
    echo '<button type="button" class="confirmation-button-non" onclick="closeConfirmation(' . $utilisateur4['ID_utilisateur'] . ')">Non, annuler</button>';
    echo '</div>';
    echo '</div>';
}

Database::disconnect();
?>


			
				</tbody>
			</table>
		</center>
		</center>
	</body>
</html>