</body>
<?php
$mode = isset($_COOKIE['mode']) ? $_COOKIE['mode'] : 'light';

if (isset($_GET['mode'])) {
    $mode = $_GET['mode'];
    setcookie('mode', $mode, time() + (86400 * 30), '/');
}

$stylesheet = ($mode === 'dark') ? 'dark.css' : 'light.css';
?>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>lifear</title>
    <link rel="stylesheet" href="../../../../../TFA dhoryan provins 4info/site/<?php echo $stylesheet; ?>">
</head>
<body> 
<center>
    <div class="sub-navbar">
        <a href="../../../../../TFA dhoryan provins 4info/site/index.php">
            <img src="../../../../../TFA dhoryan provins 4info/site/image/lifear.png" width="40px" height="40px" alt="accueil">accueil
        </a>
        <a href="../../../../../TFA dhoryan provins 4info/site/pages/information.php">
            <img src="../../../../../TFA dhoryan provins 4info/site/image/665049.png" height="60%">
            <h2>Info</h2>
        </a>
        <a href="../../../../../TFA dhoryan provins 4info/site/pages/articles.php">
            <img src="../../../../../TFA dhoryan provins 4info/site/image/599264.png" height="60%">Voir la boutique
        </a>
        <?php  
            session_start(); 
            ob_start(); 
            
            if (isset($_SESSION['ID_utilisateur']) && $_SESSION['rank'] == 1) { 
                echo '<a href="../../../../../TFA dhoryan provins 4info/site/admin\A-M-S-V\index.php">
                        <img src="../../../../../TFA dhoryan provins 4info/site/image/1091585.png" width="40px" height="40px">Articles panel
                    </a>
                    <a href="../../../../../TFA dhoryan provins 4info/site\utilisateur\gestion\index.php">
                        <img src="../../../../../TFA dhoryan provins 4info/site/image/327729.png" width="40px" height="40px" >Utilisateurs panel
                    </a>'; 
            } elseif (isset($_SESSION['ID_utilisateur']) && $_SESSION['rank'] == 2) { 
                echo '<a href="../../../../../TFA dhoryan provins 4info/site/admin\A-M-S-V\index.php">
                        <img src="../../../../../TFA dhoryan provins 4info/site/image/70310.png" width="40px" height="40px">Articles panel
                    </a>'; 
            }
            
            if (isset($_SESSION['ID_utilisateur']) && $_SESSION['rank'] == 1) { 
                echo '<a href="..\../../../TFA dhoryan provins 4info/site\pages\messages\index.php">
                        <img src="../../../../../TFA dhoryan provins 4info/site/image/Google_Messages_icon.png" height="60%">message panel
                    </a>'; 
            }
            
            if (isset($_SESSION['ID_utilisateur'])) { 
                echo '<a href="../../../../TFA dhoryan provins 4info/site/utilisateur\deconnection.php">'.'
                        <img classe="image-profil" src="../../../../TFA dhoryan provins 4info/site/image/utilisateur/'.$_SESSION['photo'].'" height="60%" alt="Photo de profil">Votre profil
                    </a>'; 
            } else { 
                echo '<a href="../../../../../TFA dhoryan provins 4info/site/utilisateur\Connection.php">
                        <img src="../../../../../TFA dhoryan provins 4info/site/image/149071.png" width="40px" height="40px">Connexion
                    </a>'; 
            }
            
            if (isset($_SESSION['ID_utilisateur'])) { 
                echo '<a href="../../../../TFA dhoryan provins 4info/site/panier/index.php">'.'
                        <img src="../../../../../TFA dhoryan provins 4info/site/image/60992.png" height="60%" alt="panier">Votre panier
                    </a>'; 
            }
        ?>
<style>
.theme-switcher {
  display: flex;
  justify-content: center;
  margin-top: 0%;
}

.theme-switcher a {
  display: inline-block;
  opacity: 0.5;
  transition: opacity 0.3s ease;
}

.theme-switcher a.active {
  opacity: 1;
}

.theme-switcher a img {
  width: 30px;
  height: 30px;
}


    </style>
<!-- Theme Switcher -->
<div class="theme-switcher">
  <a href="../../../../TFA dhoryan provins 4info/site/?mode=<?php echo ($mode === "light") ? "dark" : "light"; ?>" class="<?php echo ($mode === "light") ? "active" : ""; ?>">
    <?php if ($mode === "light") { ?>
      <img src="../../../../../TFA dhoryan provins 4info/site/image/theme/moon.png" alt="Light Mode">
    <?php } else { ?>
      <img src="../../../../../TFA dhoryan provins 4info/site/image/theme/sun.png" alt="Dark Mode">
    <?php } ?>
  </a>
</div>

</div>

</body>
</html>

</center>
