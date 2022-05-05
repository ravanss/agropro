<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'wpdb_agropro' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'D{S<otX%{FEG2Nw:{ObPwYTZ&R<Y.* A4?}TAgJRF8#m_AjgB4%,;JX(2Ay@8|xq' );
define( 'SECURE_AUTH_KEY',  'dH<LB=Fn|02J|nsmvvzKjQzjnQK]s^hIZ#%Bh4RL02+MRiC0DbSkHxp(nTB2RGz1' );
define( 'LOGGED_IN_KEY',    'tGpDa-HjSK8Gwop;j<^5A/g61|4r6iVRr7 xw}-nZ=FH h$s~Ikp/WBkJ{0`?zb*' );
define( 'NONCE_KEY',        'SCnfXl$Wsnz?}@ R+1/q7nZo%*WV)p BJv@`=dZt2<[UFoXo8a3tm6[Xt8=7/sey' );
define( 'AUTH_SALT',        'a,FSz.)wW9UN1wB<i37I0@OKG3{Lcr@2)]m7<><n!ZRbSTqMn5`vahJi ;?o:~h1' );
define( 'SECURE_AUTH_SALT', 'QQk9GY?gP{^^mY2ZrcIq$@BICO^ d/0mVDq/Q^udqsn8KG&{4U:Yc$ofPLH_GA1R' );
define( 'LOGGED_IN_SALT',   '3 =|0=,H&w{=rN7 (`UKa!]&6Q=kz[m4VArYl/~u97CEkKvkr/9@/}**E/.[&~rF' );
define( 'NONCE_SALT',       '[08Sr2N^F-(w6+T%3sJ{pNxgMn&g)DaBFST3@=%`4<Vj=dzFThVm&w(AFW.PA7k_' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Adicione valores personalizados entre esta linha até "Isto é tudo". */



/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
