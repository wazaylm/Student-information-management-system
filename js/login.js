/**
 * Created by Brian Liao on 2017/1/22.
 */

//登录
function login() {
    var users_id = $("#users_id").val();
    var users_password = $("#users_password").val();
    //前端验证
    if (users_id == "") {
        alert("用户编号必须填写！");
        return;
    }
    if (users_password == "") {
        alert("用户密码必须填写！");
        return;
    }
    //服务端验证
    $.ajax({
        type: "POST",
        url: "action/doLogin.php",
        dataType: 'json',
        cache: false,
        data: {users_id: users_id, users_password: users_password},
        success: function (ret) {//请求成功
            if (ret.code == "ok") {
                if (ret.msg == '学生') {
                    window.location.href = "students";
                }
                else if (ret.msg == '教师') {
                    window.location.href = "teachers/users_mgmt/index.php";
                }
                else if (ret.msg == '管理员') {
                    window.location.href = "supervisor/users_mgmt/index.php";
                }
            }
            else {
                alert(ret.msg);
            }
        },
        error: function (e) { //请求异常
            alert("异常：" + e);
        }
    })
}