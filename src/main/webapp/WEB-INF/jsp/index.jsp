<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <style>  
      body{  
      margin-left:auto;  
      margin-right:auto; 
      margin-TOP:100PX; 
      height:auto;
      width:100%;
      font:normal 100%; 
      text-align:center; 
      vertical-align:middle;
      }
      html{
      overflow-y:auto;
      }
      .planecenter{
      position:fixed;width:100%;height:100%;top;0;left:0;
      }
      .center{
      position:absolute;top:0;left:0;bottom:0;right:0;width:50%;height:50%;margin:auto;
      }
    </style>
    <title>管理员登录页</title> 
    <meta name="viewport" content="width=device-width,initial-scale=1" /> 
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
	<!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    --> 
    <link type="text/css" rel="stylesheet" href="../../resources/bootstrap-4/css/bootstrap.css"> 
    
     <!-- 引入jQuery文件 -->  
    <script src="../../resources/jquery-3.3.1/jquery-3.3.1.min.js" language="javascript"></script> 
    <script src="../../resources/bootstrap-4/js/bootstrap.min.js"></script>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
 
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
 
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
    <script type="text/javascript">  
    // 控制onsubmit提交的方法，方法名是vform()  
        function vform(){  
            //获取下面的id值  
            var ln = $("#loginname").val();  
            var lp = $("#loginpass").val();  
            //判断上面的变量，如果为空字符串不能提交  
            if(ln == ""){  
                alert("请输入登录名！");  
                return false;  
            }  
            if(lp == ""){  
                alert("请输入密码！");  
                return false;  
            }  
            //除以上结果的可以提交，返回true  
            return true;  
        }  
        //重置按钮方法  
        function clearForm() {  
            //获取uname的id，让它的值等于空字符串  
            $("#loginname").val("");  
            //document.getElementById("username").value = "";             
            //获取upower的id，让它被选中的序号等于0，因为下面有好几项option，第0项就是第一个  
            //document.getElementById("age").selectedIndex = 0;  
            $("#loginpass").val(""); 
        } 
    </script>  
    
  </head>  
 
    
  <body class="center"> 
    <h3>管理员登录</h3>
    <hr>
    <form action="user/login" method="post" onsubmit="return vform()" > 
    <div class="input-group" style="width:560px;margin:0 auto">
      <span class="input-group-addon" id="basic-addon1">用户名</span>
      <input id="loginname" name="loginname" type="text" class="form-control" placeholder="用户名" aria-describedby="basic-addon1">
    </div>
    <hr>
    <!--下面是密码输入框-->
    <div class="input-group" style="width:560px;margin:0 auto">
      <span class="input-group-addon" id="basic-addon1">密码</span>
      <input id="loginpass"name="loginpass" type="text" class="form-control" placeholder="密  码" aria-describedby="basic-addon1">
    </div>
    <hr>
    <!--下面是登陆按钮,包括颜色控制-->
    <button type="submit" style="width:280px;text-align:center" class="btn btn-default" >登 录</button>
    <!--下面是重置按钮,包括颜色控制--> 
    <button type="button" style="width:280px;text-align:center" class="btn btn-default" onclick="clearForm()">重置</button> 
    </form>
    <hr>    
  </body>  
</html>  