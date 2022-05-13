<?php get_header() ?>

    <?php include(TEMPLATEPATH . "/inc/news.php"); ?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <?php next_posts_link('posts antigos');?>
                    <?php previous_posts_link('Posts novos');?>
                </div>
            </div>
        </div>
    </div>

<?php get_footer();?>