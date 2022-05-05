<?php
// Função para registra os Scripts e o CSS
function agropro_script()
{
    wp_register_script('bootstrap-datepicker', get_template_directory_uri() . '/js/bootstrap-datepicker.min.js', array(), null, true);
    wp_register_script('bootstrap.bundle', get_template_directory_uri() . '/js/bootstrap.bundle.min.js', array(), null, true);
    wp_register_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.js', array(), null, true);
    wp_register_script('bootstrap-min', get_template_directory_uri() . '/js/bootstrap.min.js', array(), null, true);
    wp_register_script('jquery.nice-select', get_template_directory_uri() . '/js/jquery.nice-select.min.js', array(), null, true);
    wp_register_script('niceCountryInput', get_template_directory_uri() . '/js/niceCountryInput.js', array(), null, true);
    wp_register_script('owl.carousel', get_template_directory_uri() . '/js/owl.carousel.min.js', array(), null, true);
    wp_register_script('custom', get_template_directory_uri() . '/js/custom.js', array(), null, true);

    //Carregando os js
    wp_enqueue_script('bootstrap-datepicker');
    wp_enqueue_script('bootstrap.bundle');
    wp_enqueue_script('bootstrap');
    wp_enqueue_script('bootstrap-min');
    wp_enqueue_script('jquery.nice-select');
    wp_enqueue_script('niceCountryInput');
    wp_enqueue_script('owl.carousel');
    wp_enqueue_script('custom');
}
add_action('wp_enqueue_scripts' , 'agropro_script');

function agropro_css()
{
    wp_register_style('agropro-css', get_template_directory_uri() . '/style.css', array(), false, false);

    //Carregando os css
    wp_enqueue_style('agropro-css');
}
add_action('wp_enqueue_scripts', 'agropro_css')







?>