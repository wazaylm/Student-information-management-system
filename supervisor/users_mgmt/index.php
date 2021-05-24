<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户管理</title>
    <link href="../../css/css.css" rel="Stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
</head>
<body>

<script type="text/javascript">
    var users_id = "";
    var users_name = "";
    var users_major = "";
    var users_school = "";
    var users_grade = "";
    var users_expiredDate = "";
    var users_registerDate = "";
    var users_class = "";
    var users_campus = "";

    function search() {
        if (document.getElementById("checkbox_users_id").checked) { //判断users_id是否被选中
            users_id = document.getElementById("users_id").value;
        }
        if (document.getElementById("checkbox_users_name").checked) { //判断users_name是否被选中
            users_name = document.getElementById("users_name").value;
        }
        if (document.getElementById("checkbox_users_major").checked) { //判断users_major是否被选中
            users_major = document.getElementById("users_major").value;
        }
        if (document.getElementById("checkbox_users_grade").checked) { //判断users_grade是否被选中
            users_grade = document.getElementById("users_grade").value;
        }
        if (document.getElementById("checkbox_users_school").checked) { //判断users_school是否被选中
            users_school = document.getElementById("users_school").value;
        }
        if (document.getElementById("checkbox_users_registerDate").checked) { //判断users_registerDate是否被选中
            users_registerDate = document.getElementById("users_registerDate_year").value + "-" + document.getElementById("users_registerDate_month").value + "-" + document.getElementById("users_registerDate_day").value;
        }
        if (document.getElementById("checkbox_users_expiredDate").checked) { //判断users_expiredDate是否被选中
            users_expiredDate = document.getElementById("users_expiredDate_year").value + "-" + document.getElementById("users_expiredDate_month").value + "-" + document.getElementById("users_expiredDate_day").value;
        }
        if (document.getElementById("checkbox_users_class").checked) { //判断users_class是否被选中
            users_class = document.getElementById("users_class").value;
        }
        if (document.getElementById("checkbox_users_campus").checked) { //判断users_campus是否被选中
            users_campus = document.getElementById("users_campus").value;
        }

        //服务器端进行查询
        $.ajax({
            type: "POST",
            url: "../../action/users/search.php",
            cache: false,
            data: {
                users_id: users_id,
                users_name: users_name,
                users_major: users_major,
                users_grade: users_grade,
                users_school: users_school,
                users_registerDate: users_registerDate,
                users_expiredDate: users_expiredDate,
                users_class: users_class,
                users_campus: users_campus,
            },
            success: function (data) { //查询请求成功
                document.getElementById("result").innerHTML = data;
            }
            ,
            error: function (e) { //查询请求异常
                alert("异常：" + e);
            }
        })
    }

    function output() {
        window.location.href = '../../excel/excel_users_output.php?users_id=' + users_id +
            '&users_name=' + users_name + '&users_major=' + users_major + '&users_grade=' +
            users_grade +'&users_school=' + users_school + '&users_class=' + users_class +
            '&users_campus' + users_campus + '&users_registerDate=' + users_registerDate + "&users_expiredDate=" + users_expiredDate;
    }
    
    function addUsers() {
        window.location.href='addUsers.php';
    }
</script>

<div class="wrap">
    <?php include '../templet/templet_top.php' ?>
    <div class="contain">
        <div class="side">
            <?php include '../templet/templet_left.php' ?>
        </div>

        <div class="main">
            <div class="photos">
                <h3>★ 用户信息管理</h3>
                <div align="center" style="padding: 5px">
                    <h4>请填写以下信息，支持模糊查询：</h4><br/>
                    <table align="center" width="639" border="0"
                    <tr>
                        <td width="18"><input id="checkbox_users_id" name="checkbox_users_id" type="checkbox"
                                              value=""/></td>
                        <td align="right" width="151">用户编号（只允许输入数字）：</td>
                        <td width="352"><input id="users_id" name="users_id" type="text" size="50" maxlength="100"
                                               onkeyup="this.value=this.value.replace(/\D/g,'')"
                                               onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
                    </tr>
                    <tr>
                        <td><input name="checkbox_users_name" id="checkbox_users_name" type="checkbox" value=""/>
                        </td>
                        <td align="right">用户名称（数字和字符均可）：</td>
                        <td><input id="users_name" name="users_name" type="text" size="50" maxlength="50"/></td>
                    </tr>
                    <tr>
                        <td><input name="checkbox_users_grade" id="checkbox_users_grade" type="checkbox" value=""/>
                        </td>
                        <td align="right">用户年级（查询学生才需用）：</td>
                        <td><input id="users_grade" name="users_grade" type="text" size="50" maxlength="100"
                                   onkeyup="this.value=this.value.replace(/\D/g,'')"
                                   onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
                    </tr>

                    <tr>
                        <td><input name="checkbox_users_campus" type="checkbox" id="checkbox_users_campus"
                                   value=""/></td>
                        <td align="right">用户校区（只允许选择选项）：</td>
                        <td>
                            <select id="users_campus" name="users_campus">
                                <option value="桂花岗校区">桂花岗校区</option>
                                <option value="大学城校区">大学城校区</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><input name="checkbox_users_school" type="checkbox" id="checkbox_users_school"
                                   value=""/></td>
                        <td align="right">用户学院（只允许选择选项）：</td>
                        <td><select id="users_school" name="users_school"></select></td>
                    </tr>

                    <tr>
                        <td><input id="checkbox_users_major" name="checkbox_users_major" type="checkbox" value=""/>
                        </td>
                        <td align="right">用户专业（查询学生才需用）：</td>
                        <td>
                            <select id="users_major" name="users_major">

                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><input id="checkbox_users_class" name="checkbox_users_class" type="checkbox" value=""/>
                        </td>
                        <td align="right">用户班级（查询学生才需用）：</td>
                        <td>
                            <select id="users_class" name="users_class">

                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><input name="checkbox_users_registerDate" id="checkbox_users_registerDate"
                                   type="checkbox" value=""/></td>
                        <td align="right">用户注册时间（可选可不选）：</td>
                        <td>
                            <select name="users_registerDate_year" id="users_registerDate_year">
                                <?php
                                for ($x = 1995; $x <= 2050; $x++) {
                                    echo '<option value="' . $x . '">' . $x . '年</option>';
                                }
                                ?>
                            </select>

                            <select id="users_registerDate_month" name="users_registerDate_month">
                                <?php
                                for ($x = 1; $x <= 12; $x++) {
                                    echo '<option value="' . $x . '">' . $x . '月</option>';
                                }
                                ?>
                            </select>

                            <select id="users_registerDate_day" name="users_registerDate_day">
                                <?php
                                for ($x = 1; $x <= 31; $x++) {
                                    echo '<option value="' . $x . '">' . $x . '日</option>';
                                }
                                ?>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><input name="checkbox_users_expiredDate" id="checkbox_users_expiredDate" type="checkbox"
                                   value=""/></td>
                        <td align="right">用户过期时间（可选可不选）：</td>
                        <td>
                            <select name="users_expiredDate_year" id="users_expiredDate_year">
                                <?php
                                for ($x = 1995; $x <= 2050; $x++) {
                                    echo '<option value="' . $x . '">' . $x . '年</option>';
                                }
                                ?>
                            </select>

                            <select name="users_expiredDate_month" id="users_expiredDate_month">
                                <?php
                                for ($x = 1; $x <= 12; $x++) {
                                    echo '<option value="' . $x . '">' . $x . '月</option>';
                                }
                                ?>
                            </select>

                            <select name="users_expiredDate_day" id="users_expiredDate_day">
                                <?php
                                for ($x = 1; $x <= 31; $x++) {
                                    echo '<option value="' . $x . '">' . $x . '日</option>';
                                }
                                ?>
                            </select>
                        </td>
                    </tr>

                    </table><br/>

                    <table width="500" border="0">
                        <tr>
                            <td><input onclick="search()" name="submit" value="开始查询" type="submit"
                                       class="button_style"/>
                            </td>
                            <td>
                                <input onclick="output()" name="submit" value="导出查询数据为EXCEL文件" type="submit"
                                       class="button_style"/>
                            </td>
                            <td>
                                <input onclick="addUsers()" name="submit" value="添加更多用户" type="submit"
                                       class="button_style"/>
                            </td>

                        </tr>
                    </table>
                    <br/><br/>
                    <div id="result"></div>
                    <br/><br/>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <?php include '../templet/templet_footer.php' ?>
</div>
</body>
</html>