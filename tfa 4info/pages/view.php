<?php
require_once('../admin/database.php');


if (!empty($_GET['id'])) {
    $id = checkInput($_GET['id']);
}

$db = Database::connect();
$statement = $db->prepare('SELECT article.id_article, article.name, article.description, article.price, article.image, id_objets.types_produits AS types 
                           FROM article LEFT JOIN id_objets ON article.type=id_objets.id_types
                           WHERE article.id_article=?');
$statement->execute([$id]);
$item = $statement->fetch();
Database::disconnect();

function checkInput($data) {
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
    <link rel="icon" href="../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?>
<br/>
<div class="cadre">
  <div>
    <h2><?php echo $item['name']; ?></h2>
  </div>
  <table class="voir_article">
    <tr>
      <td class="image-voir_article">
        <img src="<?php echo '../pages/article/' . $item['image']; ?>" alt="..." width="60%">
      </td>
      <td>
        <p>Description:<br><?php echo $item['description']; ?></p>
        <p>Prix: <?php echo number_format((float) $item['price'], 2, '.', '') . ' €'; ?></p>
      </td>
    </tr>
  </table>
  <?php
// Vérifier si l'utilisateur est connecté et s'il a le rang 1, 2 et 3
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1 || $_SESSION['rank'] == 2 || $_SESSION['rank'] == 3)) {
    // Afficher le contenu de la page
 } else {
    // Rediriger l'utilisateur vers une page d'erreur ou de connexion
    header('Location:../pages/connecte_toi.php');
    exit();
 }
 if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  // Récupère les données du formulaire
  $nom = $_POST['nom'];
  $prenom = $_POST['prenom'];
  $id_utilisateurs = $_POST['id_utilisateurs'];
  $name_articles = $_POST['name_articles'];
  $prix_articles = $_POST['prix_articles'];
  $id_articles = $_POST['id_articles'];
  $nombres = $_POST['nombres'];

  // Validate quantity
  if ($nombres <= 0) {
      echo 'La quantité doit être supérieure à zéro.';
  } else {
      // Connexion à la base de données
      $db = Database::connect();

      // Vérifie si l'utilisateur et l'article sont déjà dans le panier
      $stmt = $db->prepare('SELECT nombres FROM panier WHERE id_utilisateur = ? AND id_article = ?');
      $stmt->execute([$id_utilisateurs, $id_articles]);
      $row = $stmt->fetch();
      if ($row) {
          // L'utilisateur et l'article sont déjà dans le panier, met à jour le nombre d'articles
          $nombres += $row['nombres'];
          if ($nombres > 10) {
              // Le nombre d'articles dépasse la limite de 10, affiche un message d'erreur
              echo 'Vous ne pouvez pas ajouter plus de 10 articles.</br>';
          } else {
              // Le nombre d'articles ne dépasse pas la limite de 10, met à jour le nombre d'articles
              $stmt = $db->prepare('UPDATE panier SET nombres = ? WHERE id_utilisateur = ? AND id_article = ?');
              $stmt->execute([$nombres, $id_utilisateurs, $id_articles]);
          }
      } else {
          // L'utilisateur et l'article ne sont pas encore dans le panier, insère une nouvelle ligne dans la table panier
          $stmt = $db->prepare('INSERT INTO panier (nom_utilisateur, prenom_utilisateur, name_article, prix_article, id_article, nombres, id_utilisateur) VALUES (?, ?, ?, ?, ?, ?, ?)');
          $stmt->execute([$nom, $prenom, $name_articles, $prix_articles, $id_articles, $nombres, $id_utilisateurs]);
      }

      Database::disconnect();
  }
}


?>
  <br> 
  <script src="../lifear.js"></script>
  <a href="../index.php"><button class="order-btn">Retour</button></a>
<from>
    <a class="order-btn" onclick="openForm()"><strong>Ajouter au panier</strong></a>
  </form>
  <div class="commander-popup">
    <div class="commander-form" id="popupForm">
      <h2>Voulez vous vraiment ajouter cet article ?</h2>
      <form class="panier" href="../index.php" action="" method="post">
      <input type="hidden" name="id_articles" value="<?php echo $item['id_article']; ?>">
    <input type="hidden" name="name_articles" value="<?php echo $item['name']; ?>">
    <input type="hidden" name="prix_articles" value="<?php echo $item['price']; ?>">
    <input type="hidden" name="nom" value="<?php echo $_SESSION['nom']; ?>">
    <input type="hidden" name="id_utilisateurs" value="<?php echo $_SESSION['ID_utilisateur']; ?>">
    <input type="hidden" name="prenom" value="<?php echo $_SESSION['prenom'];?>">
    <h4>quel est le nombre d'article que vous voulez ?</4></br>
    <input type="number" name="nombres" value="1"  min="1" max="10"></br>
    <button type="submit" class="commander-button-oui">Oui, je veux le commander</button><br/>
        <button type="button" class="commander-button-non" onclick="closeForm()">Non, je ne veux pas le commander</button>
    </div>
  </div>
</center>
