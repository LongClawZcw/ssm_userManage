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
      
    <title>修改用户信息</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
    <!-- 引入jQuery文件 -->  
    <script src="/js/jquery-1.11.2.min.js" language="javascript"></script>  
    <script type="text/javascript">  
    // 控制onsubmit提交的方法，方法名是vform()  
        function vform(){  
            //获取下面的id值  
            var ln = $("#loginname").val();  
            var lp = $("#loginpass").val();  
            var un = $("#age").val();   
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
                alert("请输入年龄！");  
                return false;  
            }    
            //除以上结果的可以提交，返回true  
            return true;  
        }  
    </script>  
  </head>  
    
  <body>  
    <!-- 用onsubmit调用上面的方法 -->  
    <form action="user/update" method="post" onsubmit="return vform()">      
    <c:forEach var="po" items="${id }">      
        <input type="hidden"  name="id" value="${po.id}"/><br/>     
        <table width="1000" border="1">  
            <tr>                
                <th>登录名</th>  
                <th>密码</th>  
                <th>年龄</th> 
            </tr>           
            <tr>  
                <td><input type="text" id="loginname" name="loginname" value="${po.userName}"></td>  
                <td><input type="text" id="loginpass" name="loginpass" value="${po.password}"></td>  
                <td><input type="text" id="age" name="age" value="${po.age }"></td>  
                                
                <!-- <td><input type="text" id="birthday" name="birthday" value="${po.birthday }"></td>       -->
                <<!-- td>性别：  
                    男<input type="radio" name="sex" value="1">  
                    女<input type="radio" name="sex" value="2">  
                    保密<input type="radio" name="sex" value="3" checked="checked">  
                </td>   -->
           </tr>  
    </table>  
    </c:forEach>  
    <input type="submit" value="提交"/>  
    ${updateUser}<br><!-- 操作提醒 -->  
      <a href="user/userlist">返回</a>  
    </form>  
  </body>  
</html>  