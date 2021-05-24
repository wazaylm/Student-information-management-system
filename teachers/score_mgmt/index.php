<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>教师页面</title>
    <link href="../../css/css.css" rel="Stylesheet" type="text/css"/>
</head>
<body>

<script type="text/javascript">
    function restore() {
        alert(document.getElementById("users_id").value);
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
                <h3>★ 学生信息管理</h3>
                <div style="padding:10px;color:#000">
                    <h4>请填写以下信息，支持模糊查询：</h4><br/>
                    <center>
                        <table align="center" width="639" border="0"
                        <tr>
                            <td width="18"><input name="checkbox_users_id" type="checkbox" value=""/></td>
                            <td align="right" width="151">用户编号（只允许输入数字）：</td>
                            <td width="352"><input name="users_id" type="text" size="50" maxlength="100"
                                                   onkeyup="this.value=this.value.replace(/\D/g,'')"
                                                   onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
                        </tr>
                        <tr>
                            <td><input name="checkbox_users_name" type="checkbox" value=""/></td>
                            <td align="right">用户名称（数字和字符均可）：</td>
                            <td><input name="users_name" type="text" size="50" maxlength="50"/></td>
                        </tr>
                        <tr>
                            <td><input name="checkbox_users_grade" type="checkbox" value=""/></td>
                            <td align="right">用户年级（只允许输入数字）：</td>
                            <td><input name="users_grade" type="text" size="50" maxlength="100"
                                       onkeyup="this.value=this.value.replace(/\D/g,'')"
                                       onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
                        </tr>
                        </table><br/>

                        <table width="500" border="0">
                            <tr>
                                <td>
                                    <button onclick="search()" class="button_style">开始查询</button>
                                </td>
                                <td>
                                    <button onclick="restore()" class="button_style">清空控件</button>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </center>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <?php include '../templet/templet_footer.php' ?>
</div>
</body>
</html>