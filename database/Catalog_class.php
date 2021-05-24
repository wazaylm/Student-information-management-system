<?php
//header("Content-Type: text/html; charset=UTF-8");

class catalog
{ //通过XML文件进行操作

    function xmlToArray($xml)
    {
        //禁止引用外部xml实体
        libxml_disable_entity_loader(true);
        $xmlstring = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA);
        $val = json_decode(json_encode($xmlstring), true);
        return $val;
    }
}

//使用CATALOG类
/*$catalog = new catalog;
$xml_data = file_get_contents("catalog.xml");
$arr_data = $catalog->xmlToArray($xml_data);
print_r($arr_data);*/
?>