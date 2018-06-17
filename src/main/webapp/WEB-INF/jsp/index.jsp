<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>管理员登录页</title>  
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
    </script>  
    
  </head>  
 
    
  <body>  
    <div class="container-fluid"> 
   <hr>  
   <!-- 用onsubmit调用上面的方法 -->  
   <form action="user/login" method="post" onsubmit="return vform()">  
    <!-- 用po类，这个name值可以随意起，不受mybatis配置文件影响了 -->  
        <div>用户名：<input type="text" id="loginname" name="loginname" placeholder="请输入用户名"></div>  
        <div style="margin-left:16px">密码：<input type="password" id="loginpass" name="loginpass" placeholder="请输入密码"></div>          
        <div><input type="submit" value="登录"></div>
        <div><p>Things cats <span class="text-danger">love:</span></p> </div>
   </form>  
   </div> 
  </body>  
</html>  