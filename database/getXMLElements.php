<?php
header("Content-type:text/html;charset=utf-8");
$file = file_get_contents("catalog.xml");
$xml = json_decode(json_encode(simplexml_load_string($file)),TRUE);

$keyword = '工商管理学院';
foreach ($xml['school'] as $item) {
    if ($item['name'] == $keyword) {
        print_r($item['major']);
        break;
    }
}

?>
