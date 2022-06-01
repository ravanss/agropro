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
    wp_enqueue_script( 'jqueryzao', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js', array('jquery'), '3.3.0', true );

    //Carregando os js
    wp_enqueue_script('jqueryzao');
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
add_action('wp_enqueue_scripts', 'agropro_css');

// Habilitando os menus do wordpress
add_theme_support('menus');

// Registro os menus do site
function register_menus() {
    register_nav_menus( array(
        'header menu'=>'Menu principal',
        'footer menu'=> 'Menu footer',
    ));
}
add_action('init', 'register_menus');

function register_opcoes() {

	if( function_exists('acf_add_options_page') ) {
		
		acf_add_options_page(array(
			'page_title' 	=> 'Opções adicionais',
			'menu_title'	=> 'Opções adicionais',
			'menu_slug' 	=> 'tema_adicionais',
			'capability'	=> 'edit_posts',
			'redirect'		=> false,
		));
		
	}
	
}

add_action( 'after_setup_theme', 'register_opcoes' );

// GOOGLE MAPS APLICATION 
// Method 1: Filter.
function my_acf_google_map_api( $api ){
    $api['key'] = 'AIzaSyA-Nc8ofMpIdkG6TGBRNrnWlbovJJH9XeU';
    return $api;
}
add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');

// Method 2: Setting.
function my_acf_init() {
    acf_update_setting('google_api_key', 'AIzaSyA-Nc8ofMpIdkG6TGBRNrnWlbovJJH9XeU');
}
add_action('acf/init', 'my_acf_init');






?>