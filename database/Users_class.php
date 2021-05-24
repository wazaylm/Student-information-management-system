<?php
include 'Database_class.php';
header("Content-Type: text/html; charset=UTF-8");

class Users extends Database
{ //继承基类

    //返回所有用户数据
    function returnAllData()
    {
        $sql = "SELECT * FROM users";
        $rs = Database::query($sql);
        $ret = Database::fetch_all($rs);
        return $ret;
    }

    //用户查询
    static function searchUsers($users_id, $users_name, $users_grade, $users_major, $users_school, $users_expiredDate, $users_registerDate, $users_campus, $users_class)
    {

        //初始化数组
        $users_id_array = array();
        $users_name_array = array();
        $users_email_array = array();
        $users_sex_array = array();
        $users_registerDate_array = array();
        $users_expiredDate_array = array();
        $users_campus_array = array();
        $users_class_array = array();
        $users_major_array = array();
        $users_grade_array = array();

        $sql = "SELECT * FROM users";
        $condition = "1 = 1 ";

        //判断相应条件
        if (!empty($users_id)) $condition = $condition . "AND users_id LIKE '%$users_id%' ";
        if (!empty($users_name)) $condition = $condition . "AND users_name LIKE '%$users_name%' ";
        if (!empty($users_school)) $condition = $condition . "AND users_school LIKE '%$users_school%' ";
        if (!empty($users_major)) $condition = $condition . "AND users_type = '学生' AND users_major LIKE '%$users_major%' ";
        if (!empty($users_grade)) $condition = $condition . "AND users_type = '学生' AND users_grade LIKE '%$users_grade%' ";
        if (!empty($users_campus)) $condition = $condition . "AND users_type = '学生' AND users_campus LIKE '%$users_campus%' ";
        if (!empty($users_class)) $condition = $condition . "AND users_type = '学生' AND users_class LIKE '%$users_class%' ";
        if (!empty($users_registerDate)) $condition = $condition . "AND users_registerDate LIKE '%$users_registerDate%'";
        if (!empty($users_expiredDate)) $condition = $condition . "AND users_expiredDate LIKE '%$users_expiredDate%' ";
        $sql = $sql . " WHERE " . $condition;

        //进行查询
        $rs = Database::query($sql);
        $data = Database::fetch_all($rs);
        return $data;
    }

//登录
    static function login($users_id, $users_password)
    {
        if (!empty($users_id) && !empty($users_password)) {
            $sql = "SELECT users.users_id, users.users_name, users.users_type, users.users_school FROM users WHERE users.users_id = '$users_id' AND users.users_password = PASSWORD('$users_password') LIMIT 1";
            $rs = Database::query($sql);
            $ret = Database::fetch_one($rs);
            if ($ret) {
                return $ret;//成功登录
            }
            return false;
        }
        return false;
    }

//注册新用户
    static function register($users_school, $users_grade, $users_major, $users_length, $users_id, $users_name, $users_sex, $users_campus, $users_class, $users_type, $users_registerDate, $users_expiredDate)
    {
        if (!empty($users_school) && !empty($users_id) && !empty($users_name) && !empty($users_sex) && !empty($users_type) && !empty($users_password) && !empty($users_email) && !empty($users_registerDate) && !empty($users_expiredDate)) {
            $sql = "SELECT users.users_id FROM users WHERE users.users_id = '$users_id' LIMIT 1";
            $rs = Database::query($sql);

            if (Database::num_rows() > 0) {
                return "已有该用户编号，请重新输入！";
            } else {
                $sql = "INSERT INTO brian_lib.users (users_id, users_password, users_name, users_sex, users_email, users_school, users_major, users_class, users_grade, users_length, users_type, users_campus, users_registerDate, users_expiredDate) VALUES ('$users_id', PASSWORD('111111'), '$users_name', '$users_sex', '$users_id@gzhu.edu.cn', '$users_school', '$users_major', '$users_class', '$users_grade', '$users_length', '$users_type', '$users_campus', '$users_registerDate', '$users_expiredDate')";
                $rs = Database::query($sql);
                $uid = Database::insert_id();
                if ($uid)
                    return "注册成功！";
                else
                    return "注册失败！";
            }
        } else return "error param";
    }

//删除用户信息
    static function deleteAUser($users_id)
    {
        if (!empty($users_id)) {
            $query = "DELETE FROM users.users_id = '$users_id'";
            $rs = Database::query($query);
            if ($rs) return "已经成功删除该用户！";
            else return "删除失败！";
        } else return "error param";
    }

//更新用户信息
    static function updateAUser($users_id, $users_password, $users_name, $users_sex, $users_email, $users_school, $users_major, $users_class, $users_grade, $users_length, $users_type, $users_campus, $users_registerDate, $users_expiredDate)
    {
        if (!empty($users_school) && !empty($users_id) && !empty($users_name) && !empty($users_sex) && !empty($users_type) && !empty($users_password) && !empty($users_email) && !empty($users_registerDate) && !empty($users_expiredDate)) {
            $sql = "UPDATE users SET users_password = '$users_password' ,users_name = '$users_name', users_sex = '$users_sex' , users_email = '$users_email' , users_school = '$users_school' , users_major = '$users_major' , users_class = '$users_class' , users_grade = '$users_grade' , users_length = '$users_length' , users_type = '$users_type' , users_campus = '$users_campus' , users_registerDate = '$users_registerDate' , users_expiredDate = '$users_expiredDate' WHERE users_id = '$users_id'";
            $rs = Database::query($sql);
            if ($rs) return "已经成功修改该用户！";
            else return "修改失败！";
        } else return "error param";
    }
}

?>