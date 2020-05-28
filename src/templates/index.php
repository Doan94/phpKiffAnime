<div class="bodyadmin2">
        <!-- Page d'accueil -->
    <h2 class="indextitle">Articles</h2>

    <!-- Liste des articles du blog -->
    <ul class="post-list">
        <?php foreach($posts as $post): ?>
            <li class="post">

                   
                    <div class="iarticle">
                        <h2>
                            <!-- Lien vers article de blog détaillé avec les commentaires -->
                            <a href="show_post.php?id=<?= intval($post['Id']) ?>" title="Consulter l'article">
                                <?= htmlspecialchars($post['Title']) ?>
                            </a>
                        </h2>
                     <img class="iphoto" src="./images/theme/<?=$post["Image"]?>" alt="image de l'\article"></br>
                        <!-- Seul un extrait de l'article du blog est affiché -->
                        <article><?= substr(htmlspecialchars($post['Contents']), 0, 100) ?>&nbsp;[...]</article>
                        <a href="show_post.php?id=<?= intval($post['Id']) ?>" class="button btn-warning">Consulter l'article</a></br>
                        <small>
                            Rédigé par <?= htmlspecialchars($post['FirstName']) ?> <?= htmlspecialchars($post['LastName']) ?>
                            le <?= htmlspecialchars($post['CreationTimestamp']) ?>
                        </small>
                    </div>    
            </li>
        <?php endforeach; ?>
    </ul>
</div>
