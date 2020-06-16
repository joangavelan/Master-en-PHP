<?php require_once 'includes/cabecera.php' ?>
<?php require_once 'includes/lateral.php' ?>

<div id="principal">
    <h1>Últimas entradas</h1>
    <?php
    $entradas = conseguirUltimasEntradas($db);
    if (!empty($entradas)) :
        while ($entrada = mysqli_fetch_assoc($entradas)) :
    ?>
        <article class="entrada">
        <a href="#">
            <h2><?= $entrada['titulo']?></h2>
            <p>
                <?= $entrada['descripcion']?>
            </p>
        </a>
        
    </article>
    <?php
        endwhile;
    endif;
    ?>
    
    <div id="btn">
        <a href="">Ver todas las entradas</a>
    </div>
</div>

<?php require_once 'includes/footer.php' ?>