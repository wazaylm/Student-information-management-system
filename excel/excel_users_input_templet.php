<?php
error_reporting(E_ALL);
date_default_timezone_set('Europe/London');
/** PHPExcel */
require_once "PHPExcel/Classes/PHPExcel.php";
include "../database/Users_class.php";

// 模板备选数据收集
$users_school = trim($_GET["users_school"]);
$users_campus = trim($_GET["users_campus"]);
$users_major = trim($_GET["users_major"]);

// 创建一个新的PHPExcel实例
$objPHPExcel = new PHPExcel();

// 设置一些基本属性
$objPHPExcel->getProperties()->setCreator("Brian Liao")
    ->setLastModifiedBy("Brian Liao")
    ->setTitle("Office 2007 XLSX Test Document")
    ->setSubject("Office 2007 XLSX Test Document")
    ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
    ->setKeywords("office 2007 openxml php")
    ->setCategory("Test result file");
$objPHPExcel->getActiveSheet()->mergeCells('A1:L1');
$objPHPExcel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(20);
$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(20);

// 添加一些基本数据
$objPHPExcel->setActiveSheetIndex(0)
    ->setCellValue('A1', '用户添加表格模板')
    ->setCellValue('A2', '用户编号')
    ->setCellValue('B2', '用户名称')
    ->setCellValue('C2', '用户性别')
    ->setCellValue('D2', '所在校区')
    ->setCellValue('E2', '所在学院')
    ->setCellValue('F2', '所学专业')
    ->setCellValue('G2', '所在年级')
    ->setCellValue('H2', '所在班级')
    ->setCellValue('I2', '用户类型')
    ->setCellValue('J2', '注册日期')
    ->setCellValue('K2', '过期日期')
    ->setCellValue("D3", $users_campus)
    ->setCellValue("E3", $users_school)
    ->setCellValue("F3", $users_major);

// 重新命名工作表
$objPHPExcel->getActiveSheet()->setTitle('用户添加表格模板');

// 设置一些其他的属性
$objPHPExcel->setActiveSheetIndex(0);
header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="用户添加表格模板.xls"');
header('Cache-Control: max-age=0');
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save('php://output');
exit;
?>