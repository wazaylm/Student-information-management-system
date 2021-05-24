<?php
include 'Database_class.php';
header("Content-Type: text/html; charset=UTF-8");

class Score extends Database
{ //继承基类

    //返回所有成绩数据
    function returnAllData()
    {
        $sql = "SELECT * FROM score";
        $rs = Database::query($sql);
        $ret = Database::fetch_all($rs);
        return $ret;
    }
}

?>