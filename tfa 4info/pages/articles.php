<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    
    <link rel="icon" href="../image\lifear.png">
</head>
<body> 
<?php require '../navbar.php';?><br/>
<center><div class="cadre3">
<?php
require '../admin/database.php';
$db = Database::connect();

// Récupérer toutes les catégories de la base de données
$categoriesStatement = $db->query('SELECT DISTINCT article.type, id_objets.types_produits, id_objets.id_types FROM article INNER JOIN id_objets ON article.type = id_objets.id_types ');
$categories = $categoriesStatement->fetchAll();

// Afficher la liste déroulante de catégorie et de tri
echo '<form method="get">';
echo '<label for="category">Choisir le type de catégorie :</label>';
echo '<select id="category" name="category">';
echo '<option value="all" ' . ($_GET['category'] === 'all' ? 'selected' : '') . '>Tous</option>';
foreach ($categories as $category) {
  echo '<option value="' . $category['type'] . '" ' . ($_GET['category'] === $category['type'] ? 'selected' : '') . '>' . $category['types_produits'] . '</option>';
}
echo '</select>';

echo '<label for="sort">Trier par :</label>';
echo '<select id="sort" name="sort">';
echo '<option value="asc" ' . ($_GET['sort'] === 'asc' ? 'selected' : '') . '>Prix croissant</option>';
echo '<option value="desc" ' . ($_GET['sort'] === 'desc' ? 'selected' : '') . '>Prix décroissant</option>';
echo '</select>';

echo '<label for="price">Sélectionner le prix :</label>';
echo '<select id="price" name="price">';
echo '<option value="all" ' . ($_GET['price'] === 'all' ? 'selected' : '') . '>Tous les prix</option>';
echo '<option value="lt50" ' . ($_GET['price'] === 'lt50' ? 'selected' : '') . '>0 € à 50 €</option>';
echo '<option value="lt100" ' . ($_GET['price'] === 'lt100' ? 'selected' : '') . '>50 € à 100 €</option>';
echo '<option value="50to100" ' . ($_GET['price'] === '50to100' ? 'selected' : '') . '>100 € à 500 €</option>';
echo '<option value="gt100" ' . ($_GET['price'] === 'gt100' ? 'selected' : '') . '>500 € à 1000 €</option>';
echo '<option value="gt200" ' . ($_GET['price'] === 'gt200' ? 'selected' : '') . '>Plus de 1000 €</option>';
echo '</select>';

echo '<button type="submit" class="btn-quantite">Filtrer</button>';
echo '</form>';

// Récupérer les articles en fonction de la catégorie, du tri et du prix sélectionnés
$selectedCategory = isset($_GET['category']) ? $_GET['category'] : 'all';
$selectedSort = isset($_GET['sort']) ? $_GET['sort'] : 'all';
$selectedPrice = isset($_GET['price']) ? $_GET['price'] : 'all';

$priceCondition = '';
if ($selectedPrice === 'lt50') {
  $priceCondition = 'AND price < 50';
} elseif ($selectedPrice === 'lt100') {
  $priceCondition = 'AND price > 50 AND price < 100';
} elseif ($selectedPrice === '50to100') {
  $priceCondition = 'AND price >= 100 AND price <= 500';
} elseif ($selectedPrice === 'gt100') {
  $priceCondition = 'AND price > 500 and price <= 1000';
} elseif ($selectedPrice === 'gt200') {
  $priceCondition = 'AND price > 999';
}


if ($selectedCategory !== 'all') {
  $statement = $db->prepare('SELECT id_article, name, price, description, image FROM article WHERE type = :category ' . $priceCondition . ' ORDER BY price ' . ($selectedSort === 'asc' ? 'ASC' : 'DESC'));
  $statement->execute(['category' => $selectedCategory]);
} else {
  $statement = $db->query('SELECT id_article, name, price, description, image FROM article WHERE 1 ' . $priceCondition . ' ORDER BY price ' . ($selectedSort === 'asc' ? 'ASC' : 'DESC'));
}

// Afficher les articles
$articles = $statement->fetchAll();
foreach ($articles as $article) {
  $shortName = (strlen($article['name']) > 20) ? substr($article['name'], 0, 20) . '... ' : $article['name'];
  echo '<div class="article"><a href="view.php?id=' . $article['id_article'] . '">
  <img src="article/' . $article['image'] . '"></a>
  <span>' . $shortName . '</span>
  <p>' . $article['price'] . ' €</p>
  <a href="view.php?id=' . $article['id_article'] . '"><button class="order-btn">afficher l\'article</button></a></div>';
}
Database::disconnect();
?>


</center>
</body>
</html>
