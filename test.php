<?php

echo var_export(unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip=103.206.137.0')));
echo uniqid();
