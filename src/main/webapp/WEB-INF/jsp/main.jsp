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
    <title>用户列表</title>  
      
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
    <style type="text/css">  
        td{text-align: center;}  
        div{height: 1.5em;}  
    </style>  
    <script type="text/javascript">  
    	function vform(){  
        //获取下面的id值  
        var ln = $("#username").val();  
        var lp = $("#age").val();  
        //判断上面的变量，如果为空字符串不能提交  
        if(ln == ""){  
            alert("请输入登录名！");  
            return false;  
        }  
        if(lp == ""){  
            alert("请输入年龄");  
            return false;  
        }  
        //除以上结果的可以提交，返回true  
        return true;  
    }  
        //定义个方法提醒用户确定要删除吗？方法的参数就是要删除的id名  
        function deleteUser(id){              
                    if(confirm("您确认删除吗？")){   
                    //如果确定删除就访问servlet，这里超链接传值传的是方法里的参数           
                    window.location.href="user/delete/"+id;  
                }  
            }  
              
        //重置按钮方法  
        function clearForm() {  
            //获取uname的id，让它的值等于空字符串  
            $("#username").val("");  
            //document.getElementById("username").value = "";             
            //获取upower的id，让它被选中的序号等于0，因为下面有好几项option，第0项就是第一个  
            //document.getElementById("age").selectedIndex = 0;  
            $("#age").val("20"); 
        } 
        function submit() {  
            with(document.getElementById("bigt")) {  
                       action="/user/getinsert";  
                       method="post";  
                       submit();  
                }  
       }            
    </script>
  
  </head>  
    
  <body>  
  <div></div>  
   <hr>  
    <!-- 查询部分，给表单定义个name属性，通过js提交 -->  
  <form name="sform" action="user/select" method="post">          
        <div><!-- 如果这里写个value，value值就会显示在页面上，但是我取不出来request作用域里的值，所以查询时，页面上就没有查询的内容了 -->          
            用户名：<input type="text" id="username" name="username">   
        </div>  
         <div style="margin-left:16px">  
            
            
           年龄   ： <input type="number" id="age" name="age" min="0" max="100" step="1" value="20" /> 
        
            <input type="submit" value="查询" onsubmit="return vform()">  
            <!-- 重置按钮，调重置方法clearForm -->  
            <input type="button" onclick="clearForm()" value="重置">  
        </div>  
  </form>  
  <hr>  
     <a href="/user/getinsert">添加用户</a>
     <a href="/jsp/insert.jsp">添加用户</a>

     <input id= bigt type="button" onclick="submit()" value="添加用户">
    <table border="1" width="700">  
        <tr>  
            <th>ID</th>  
            <th>登录名</th>  
            <th>密码</th>   
            <th>年龄</th>  
            <th>操作</th>    
        </tr>  
        <c:forEach var="po" items="${ulist}">  
        <tr>  
            <!-- 和po类里的属性名一样 -->  
            <td>${po.id }</td>  
            <td>${po.userName }</td>  
            <td>${po.password }</td>  
            <td>${po.age }</td>              
            
               
            <td><!-- 用超链接传值方式把userid的值传给控制层 -->  
            <a href="/user/uid?id=${po.id}">修改</a>   
            <!-- javascript:void(0)没有返回值，鼠标点击什么也不发生，如果写#号，点击会跳到顶部。  
                onclick="deleteUser(${po.id})：调javascript里的方法，并把要删除的id值传进来  
             -->  
            <a href="javascript:void(0)" onclick="deleteUser(${po.id})">删除</a>    
            </td>  
        </tr>  
        </c:forEach>   
    </table>  
  </body>  
</html>  