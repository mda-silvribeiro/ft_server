<?php

define('DB_NAME', 'wordpress');

define('DB_USER', 'wordpress');

define('DB_PASSWORD', '201998');

define('DB_HOST', 'localhost');

define('DB_CHARSET', 'utf8');

define('DB_COLLATE', '');


define('AUTH_KEY',         'iuOa|#?pC8-wF_otke9Uo)-H]@1q-ZBeJU+`Cv4x^#w&oZY1sY^^si+)JUi.Yx0q');
define('SECURE_AUTH_KEY',  'HTRp6or<g~>J-dhW8s++e|2,7|:pa)VZI4&+fj!Nx/QooQ2+Iy(5.@I9nYDg;w|F');
define('LOGGED_IN_KEY',    '4$b-zd pH_$N!gneDSI]-x6SNKx.E-.B6Ah:NlS%V>Tw_]BT7y[>vqR&D</qy%++');
define('NONCE_KEY',        'bNyz}b~Cc.uu05Tb>|w&n|JX3 hBR3JO79);=NNFBT]C*3~T%&y,BZ>E=5%N]K+7');
define('AUTH_SALT',        'V5]=C)OXc+2EV?oja8.r0gAKH;-yN8EcCtOO#z05R5{-6-gYE5-AEnUC+,PS*3PX');
define('SECURE_AUTH_SALT', 'Ugm}bU{S%vKI{[5.vN<WNt+O@Z%zz[a{j[`Bt|`_ERQIQ*:6McJ9q||k4wEwe<FN');
define('LOGGED_IN_SALT',   ')i0AeCE(9F-1MjF%-Hp9s5:sbTMgwWulAopy[)3-gJ4>2s*p4k)2%mwXM|R6No{5');
define('NONCE_SALT',       'M&:qDv5ax4;Gxl@EvZ^Sh-Np=:%ceI&tHTmNR/wLT^W6aL48!A^>< BD-SM-vg[ ');;

$table_prefix  = 'wp_';

define('WP_DEBUG', false);

if ( !defined('ABSPATH') )
   define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');
