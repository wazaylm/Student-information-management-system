<?php
include("../../database/Users_class.php");

$users_id = trim($_POST["users_id"]);
$users_name = trim($_POST["users_name"]);
$users_grade = trim($_POST["users_grade"]);
$users_major = trim($_POST["users_major"]);
$users_school = trim($_POST["users_school"]);
$users_class = trim($_POST["users_class"]);
$users_campus = trim($_POST["users_campus"]);
$users_expiredDate = trim($_POST["users_expiredDate"]);
$users_registerDate = trim($_POST["users_registerDate"]);

if (!empty($users_id) || !empty($users_name) || !empty($users_grade) || !empty($users_major) || !empty($users_school) || !empty($users_campus) || !empty($users_expiredDate) || !empty($users_registerDate)) {
    $result_array = Users::searchUsers($users_id, $users_name, $users_grade, $users_major, $users_school, $users_expiredDate, $users_registerDate, $users_campus, $users_class);
    if (!empty($result_array)) {
        //print_r($result_array);
        $html = "<table border='1' cellpadding='5' cellspacing='5'>";
        $html .= "<tr>
						<td>用户编号</td>
						<td>用户名称</td>
						<td>用户班级</td>
						<td>用户邮箱</td>
						<td>用户专业</td>
						<td>用户性别</td>
						<td>用户校区</td>
						<td>用户年级</td>
						<td>用户注册日期</td>
						<td>用户过期日期</td>
				 </tr>";
        $data = '';
        foreach ($result_array as $v) {
            $data .= "<tr>
						<td>" . $v['users_id'] . "</td>
						<td>" . $v['users_name'] . "</td>
						<td>" . $v['users_class'] . "</td>
						<td>" . $v['users_email'] . "</td>
						<td>" . $v['users_major'] . "</td>
						<td>" . $v['users_sex'] . "</td>
						<td>" . $v['users_school'] . '_' . $v['users_campus'] . "</td>
						<td>" . $v['users_grade'] . "</td>
						<td>" . $v['users_registerDate'] . "</td>
						<td>" . $v['users_expiredDate'] . "</td>
				 </tr>";
        }
        echo $html . $data . "</table > ";
    } else {
        echo "没有查询到任何结果！";
    }
} else {
    echo "您至少需要选择一个查询条件！";
}
?>