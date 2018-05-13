<?php require_once("../resources/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

    <div class="container">

        <header class="jumbotron hero-spacer">
            <h1>TEEShirt</h1>
            <p>Welcome to TEEShirt folks! We welcome you to our world of fashion.All the brands that we offer are the leading one's and what's more you want?ENJOYY </p>
           
        </header>

        <hr>
        <div class="row">
            <div class="col-lg-12">
                <h3>Latest Product</h3>
            </div>
        </div>
      
        <div class="row text-center">

         <?php get_products_in_cat_page(); ?>


        </div>
   
      

    </div>


<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>
