<?php
require_once 'PHPExcel/Classes/PHPExcel.php';
require_once 'PHPExcel/Classes/PHPExcel/IOFactory.php';
require_once 'PHPExcel/Classes/PHPExcel/Reader/Excel5.php';
include '../database/Users_class.php';
header("Content-type:text/html;charset=utf-8");
$file = file_get_contents("../database/catalog.xml");
$xml = simplexml_load_string($file);
print_r($xml);
/*$objReader = PHPExcel_IOFactory::createReader('Excel5');//use excel2007 for 2007 format
$objPHPExcel = $objReader->load($filename); //$filename可以是上传的文件，或者是指定的文件
$sheet = $objPHPExcel->getSheet(0);
$numOfRow = $sheet->getHighestRow(); // 取得总行数
$numofColumn = $sheet->getHighestColumn(); // 取得总列数
$k = 0;

$users_info = array();

// 循环读取excel文件，读取一条，先进行数据检查，如果无误
for ($j = 2; $j <= $numOfRow; $j++) {

    $users_id = $objPHPExcel->getActiveSheet()->getCell("A" . $j)->getValue(); // 获取A列的值
    $users_name = $objPHPExcel->getActiveSheet()->getCell("B", $j)->getValue();
    $users_sex = $objPHPExcel->getActiveSheet()->getCell("C", $j)->getValue();
    $users_campus = $objPHPExcel->getActiveSheet()->getCell("D", $j)->getValue();
    $users_school = $objPHPExcel->getActiveSheet()->getCell("E", $j)->getValue();
    $users_major = $objPHPExcel->getActiveSheet()->getCell("F", $j)->getValue();
    $users_grade = $objPHPExcel->getActiveSheet()->getCell("G", $j)->getValue();
    $users_class = $objPHPExcel->getActiveSheet()->getCell("H", $j)->getValue();
    $users_type = $objPHPExcel->getActiveSheet()->getCell("I", $j)->getValue();
    $users_registerDate = $objPHPExcel->getActiveSheet()->getCell("J", $j)->getValue();
    $users_expiredDate = $objPHPExcel->getActiveSheet()->getCell("K", $j)->getValue();

    // 以下为检查数据格式是否正确
    if (strlen($users_id) <= 20 || strlen($users_name) <= 10 || strlen($users_sex) <= 2 || strlen($users_class) <= 20 || strlen($users_length) <= 3 || strlen($users_campus) <= 20
    ) {
        if ($users_type == "学生" || $users_type == "教师") {
            $users_info = array("users_id" => $users_id, "users_name" => $users_name, "users_sex" => $users_sex, "users_class" => $users_campus,
                "users_grade" => $users_grade, "users_length" => $users_length, "users_type" => $users_type, "users_registerDate" => $users_registerDate,
                "users_expiredDate" => $users_expiredDate);
        } else {
            break;
            echo "编号为" . $users_id . "用户类型有问题，请检查！";
        }
    } else {
        break;
        echo "编号为" . $users_id . "信息格式不符合要求，请检查！";
    }

    foreach ($users_info as $data) {
        Users::register($data["users_school"], $data["users_grade"], $data["users_major"], $data["users_length"], $data["users_id"], $data["users_name"], $data["users_sex"], $data["users_campus"], $data["users_class"], $data["users_type"], $data["users_registerDate"], $data["users_expiredDate"]);
    }
}*/
?>