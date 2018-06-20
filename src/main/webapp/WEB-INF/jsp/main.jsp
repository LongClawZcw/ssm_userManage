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
     <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
 
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>  
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
    <script>
    $(function () {
        $("ul.pagination li.disabled a").click(function () {
            return false;
        });
    });
	</script>
  
  </head>  
    
  <body>  
  <div class="container text-center">
  	<h1>欢迎使用用户信息管理系统</h1>
  	<hr> 
  	<div class="row">
  	  <form name="sform" action="user/select" method="post">         
        <div class="col-md-4"><!-- 如果这里写个value，value值就会显示在页面上，但是我取不出来request作用域里的值，所以查询时，页面上就没有查询的内容了 -->          
            用户名：<input type="text" id="username" name="username">   
        </div>
          
         <div style="margin-left:16px" class="col-md-4">  
            
            
            年龄   ： <input type="number" id="age" name="age" min="0" max="100" step="1" value="20" /> 
         </div>
         <div class="col-md-1">
            <input type="submit" value="查询" onsubmit="return vform()">  
         </div>
            <!-- 重置按钮，调重置方法clearForm --> 
         <div class="col-md-1"> 
            <input type="button" onclick="clearForm()" value="重置">  
        </div>
      </form>  
  	</div>
  	<hr> 
  	<div class="row"> 
     <a href="/user/getinsert" style="font-size:16px">添加用户</a>
     <!-- <input id= bigt type="button" onclick="submit()" value="添加用户"> -->
    </div>
    <div class="row">
    <table border="1" width="700" class="table table-bordered">  
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
    <hr>
    	<nav class="pageDIV">
    	<ul class="pagination">
    		<li <c:if test="${!page.hasPrevious}">class="disabled"</c:if>>
            	<a  href="user/userlist?page.start=0">
                	<span>«</span>
            	</a>
        	</li>

        	<li <c:if test="${!page.hasPrevious}">class="disabled"</c:if>>
            	<a  href="user/userlist?page.start=${page.start-page.count}">
                	<span>‹</span>
            	</a>
        	</li>  	
        	
            <!-- <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
            <li>
                <a href="user/userlist?page.start=${status.index*page.count}" class="current">${status.count}</a>
            </li>
        	</c:forEach> -->
        	<c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

    		<c:if test="${status.count*page.count-page.start<=15 && status.count*page.count-page.start>=-5}">
       			 <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
            <a
                    href="user/userlist?page.start=${status.index*page.count}"
                    <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
            >${status.count}</a>
        		</li>
    		</c:if>
			</c:forEach>

        	<li <c:if test="${!page.isHasNext()}">class="disabled"</c:if>>
            	<a href="user/userlist?page.start=${page.start+page.count}">
                	<span>›</span>
            	</a>
        	</li>
        	<li <c:if test="${!page.isHasNext()}">class="disabled"</c:if>>
            	<a href="user/userlist?page.start=${page.last}">
                	<span>»</span>
            	</a>
        	</li>
    	</ul>
	</nav>
	</div> 
 </div>	    
  </body>  
</html>  