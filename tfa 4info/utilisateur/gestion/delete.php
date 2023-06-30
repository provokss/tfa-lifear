<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="icon" href="../../image\lifear.png">
</head>
<body> 
<?php require '../../navbar.php';?> -
<?php
require '../../admin/database.php';

// Vérifier si l'utilisateur est connecté et s'il a le rang 1
if(isset($_SESSION['rank']) && ($_SESSION['rank'] == 1)) {
    // Le code ci-dessous ne sera exécuté que si l'utilisateur est connecté et a le rang 1

    $id = isset($_POST['id_utilisateur']) ? checkInput($_POST['id_utilisateur']) : null;

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($id)) {
        $db = Database::connect();

        // Vérifier que l'utilisateur à supprimer est bien celui sélectionné
        $statement_check = $db->prepare('SELECT * FROM utilisateurs WHERE ID_utilisateur = ?');
        $statement_check->execute([$id]);
        $utilisateur = $statement_check->fetch();
        if (!$utilisateur) {
            // L'utilisateur sélectionné n'existe pas dans la base de données
            // Afficher un message d'erreur à l'utilisateur
            $_SESSION['message'] = "L'utilisateur sélectionné n'existe pas.";
            $_SESSION['message_type'] = "error";
            header('Location: index.php');
            exit();
        }

        $statement = $db->prepare("DELETE FROM utilisateurs WHERE ID_utilisateur = ?");
        $statement->execute([$id]);
        Database::disconnect();

        // Afficher un message de confirmation à l'utilisateur
        $_SESSION['message'] = "L'utilisateur a été supprimé avec succès.";
        $_SESSION['message_type'] = "success";
        header('Location: index.php');
        exit();
    }
} else {
    // Rediriger l'utilisateur vers la page de connexion s'il n'est pas connecté ou s'il n'a pas le rang 1
    header('Location:../../pages/connexion.php');
    exit();
}

function checkInput($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>



    </body>
</html>