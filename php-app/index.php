<?php
echo "<h1>PHP-APP</h1>";
echo "<pre>";

echo "<hr/><b>\$_GET:</b>\n";
print_r($_GET);
echo "<hr/><b>\$_POST:</b>\n";
print_r($_POST);
echo "<hr/><b>\$_COOKIE:</b>\n";
print_r($_COOKIE);

echo "<hr/><b>Headers:</b>\n";
print_r(apache_request_headers());

echo "<hr/><b>\$_SERVER:</b>\n";
print_r($_SERVER);

echo "<hr/>\n";
$objDateTime = new DateTime('NOW');
echo "<i>Generation date/time: ".$objDateTime->format('c')."</i>\n"; // ISO8601 formated datetime
//echo $objDateTime->format(DateTime::ISO8601); // Another way to get an ISO8601 formatted string
