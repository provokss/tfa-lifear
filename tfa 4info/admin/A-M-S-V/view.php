<?php
        require ('../database.php');
        if(!empty($_GET['id']))
        {
            $id=checkInput($_GET['id']);

        }
        
        $db = Database::connect();
        $statement = $db->prepare('SELECT article.id_article, article.name, article.description, article.price, article.image, id_objets.types_produits AS types 
                                                FROM article LEFT JOIN id_objets ON article.type=id_objets.id_types
                                                where article.id_article=?');
        $statement->execute(array($id));
        $item = $statement->fetch();
        Database::disconnect();



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

?><br/>
<center>  
    <div class='cadre'>
        <div>
            </br> 
            <h2><?php echo ' '.$item['name']; ?></h2>              
        </div>
        <table class="voir_article">
            <tr>
                <td class="image-voir_article">
                    <img src="<?php echo '../../pages/article/' .$item['image'] ; ?>" alt="..." width="60%">
                </td>
                <td>
                    <p>Description:</br><?php echo ' '.$item['description']; ?><br></p>
                    Prix:<?php echo ' '.number_format((float)$item['price'],2, '.','').' €'; ?></br>
                </td>
            </tr>
        </table>
        </br>
        <div></br>
            <a href="index.php" value="accueil" type="button">
                <button class="order-btn">retour</button>
            </a>
        </div>
    </div>
</center>
</body>            
</html>
