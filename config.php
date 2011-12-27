<?php
// database settings
define('DB_NAME', 'jsbin');
define('DB_PASSWORD', ''); // ...and password
define('DB_USER', 'jsbin');  // Your MySQL username
define('DB_HOST', 'localhost');  // 99% chance you won't need to change this value

// change this to suite your offline detection
define('OFFLINE', is_dir('/Users/'));

define('HOST', 'http://localhost/');

// if you're running from a subdirectory, change this to the start of the
// url, i.e. offline.jsbin.com/foobar/ - ROOT would be foobar
define('ROOT', '/development/jsbin/');

// wishing PHP were more like JavaScript...wishing I was able to use Node.js they way I had wanted...
define('VERSION', OFFLINE ? 'debug' : trim(file_get_contents('VERSION')));
?>