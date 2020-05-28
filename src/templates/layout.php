<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>KiffAnime</title>

    <!-- Feuilles de style externes -->
    <link rel="stylesheet" href="css/normalize-3.0.3.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans">

    <!-- Feuilles de style de l'application -->
    <link rel="stylesheet" href="css/blog-main.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="css/ui-button.css">
    <link rel="stylesheet" href="css/ui-form.css">
</head>
<body>
    <!-- En-tête commune de l'application -->
    <header>
        <div class='logotitre'>
            <img class='logo' src='./images/theme/logo.png'>
            <h1>KiffAnime</h1>
        </div>
        <nav class="navbar">
                <ul>
                    <li><a href="index.php">Accueil</a></li>
                    <li><a href="admin.php">Articles</a></li>
                    <li><a href="add_post.php">Rédiger un article</a></li>
                    <li><a href="">Qui sommes nous?</a></li>
                </ul>
        </nav>
    </header>



    <main>
        <!-- Chargement du template PHTML spécifié par le programme PHP -->
        <?php include 'templates/'.$template.'.php' ?>
    </main>

    <!-- Pied de page commun de l'application -->
    <footer class="blogfooter">
        <h5>Retrouvez nous:</h5>
        <ul class="navfooter">
            <li class="nav_item1"><a href="https://www.facebook.com/" target="_blank"><img src="./images/theme/facebooklogo.png" alt="fb"></a></li>
            <li class="nav_item2"><a href="https://www.instagram.com/%22target=%22_blank%22%3E"><img src="./images/theme/instagramlogo.png" alt="insta"></a></li>
            <li class="nav_item3"><a href="https://www.twitter.com/"><img src="./images/theme/twitterlogo.png" alt="twitter"></a></li>
          </ul>
    </footer>
        <!-- jQuery Bootstrap -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>