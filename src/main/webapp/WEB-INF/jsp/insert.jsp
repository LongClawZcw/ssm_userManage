<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>添加用户</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
    <!-- 引入jQuery文件 -->  
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" language="javascript"></script>  
    <script type="text/javascript">  
    // 控制onsubmit提交的方法，方法名是vform()  
        function vform(){  
            //获取下面的id值  
            var ln = $("#userName").val();  
            var lp = $("#password").val();  
            var un = $("#age").val();  
            // var up = $("#upower").val();  
            // var bir = $("#birthday").val();  
            //判断上面的变量，如果为空字符串不能提交  
            if(ln == ""){  
                alert("请输入登录名！");  
                return false;  
            }  
            if(lp == ""){  
                alert("请输入密码！");  
                return false;  
            }  
            if(un == ""){  
                alert("请输入用户名！");  
                return false;  
            }  
            // if(up == -1){  
            //     alert("请选择权限！");  
            //     return false;  
            // }  
            // if(bir == ""){  
            //     alert("请输入生日！");  
            //     return false;  
            // }             
            //除以上结果的可以提交，返回true  
            return true;  
        }  
    </script>  
  
  </head>  
    
  <body>  
    <!-- 用onsubmit调用上面的方法 -->  
    <form action="user/insert" method="post" onsubmit="return vform()">   
     <table width="1000" border="1">  
        <tr>  
            <th>登录名</th>  
            <th>密码</th>  
            <th>年龄</th>   
        </tr>           
        <tr>  
            <td><input type="text" id="loginname" name="userName"/></td>  
            <td><input type="text" id="loginpass" name="password"/></td>  
            <td><input type="text" id="age" name="age"/></td>             
            <!-- <td>  
                <select id="upower" name="upower" >  
                    <option value="-1">=请选择=</option>  
                    <option value="99">管理员</option>  
                    <option value="1">普通用户</option>  
                </select>  
            </td>              
            <td><input type="text" id="birthday" name="birthday"></td>                      
            <td>性别：  
                男<input type="radio" name="sex" value="1">  
                女<input type="radio" name="sex" value="2">  
                保密<input type="radio" name="sex" value="3" checked="checked">  
            </td>    -->
        </tr>  
    </table>  
    <input type="submit" value="提交">  
     ${inserUser}<br>  
      <a href="user/userlist">返回</a>  
   </form>  
  </body>  
</html>  