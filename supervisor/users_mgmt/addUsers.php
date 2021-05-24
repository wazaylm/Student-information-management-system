<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加用户</title>
    <link href="../../css/css.css" rel="Stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
</head>
<body>

<script type="text/javascript">

</script>

<div class="wrap">
    <?php include '../templet/templet_top.php' ?>
    <div class="contain">
        <div class="side">
            <?php include '../templet/templet_left.php' ?>
        </div>

        <div class="main">
            <div class="photos" align="center">
                <h3 align="left">★ 新用户添加</h3>
                <table align="center" width="639" border="0">
                    <tr>
                        <td align="right">用户年级：</td>
                        <td><input id="users_grade" name="users_grade" type="text" size="50" maxlength="100"
                                   onkeyup="this.value=this.value.replace(/\D/g,'')"
                                   onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
                    </tr>

                    <tr>
                        <td align="right">用户校区：</td>
                        <td>
                            <select id="users_campus" name="users_campus">
                                <option value="桂花岗校区">桂花岗校区</option>
                                <option value="大学城校区">大学城校区</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td align="right">用户学院：</td>
                        <td><select id="users_school" name="users_school"></select></td>
                    </tr>

                    <tr>
                        <td align="right">用户专业：</td>
                        <td>
                            <select id="users_major" name="users_major">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </table>
                <br/>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <?php include '../templet/templet_footer.php' ?>
</div>
</body>
</html>