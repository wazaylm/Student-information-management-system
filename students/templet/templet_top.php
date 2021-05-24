<div class="top_box">
    <div class="logo">广州大学学生学业管理系统</div>
    <div class="top_right">
        <a href="../../action/doLogout.php">退出登录</a>&nbsp;&nbsp;&nbsp;<a href="#">修改密码</a>
    </div>
    <div class="clear"></div>
</div>

<?php
include '../../public/public.php';//公共方法
if (!isset($_COOKIE["lib_users_type"]) || $_COOKIE["lib_users_type"] != "学生") {
    echo "<script>window.location.href = '../../index.php'</script>;";
}
?>