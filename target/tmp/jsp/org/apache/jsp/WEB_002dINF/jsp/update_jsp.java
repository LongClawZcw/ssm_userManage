/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.2.8.v20150217
 * Generated at: 2018-06-16 03:50:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/D:/Maven/apache-maven-3.5.3/repo/org/apache/taglibs/taglibs-standard-impl/1.2.1/taglibs-standard-impl-1.2.1.jar!/META-INF/c.tld", Long.valueOf(1384339662000L));
    _jspx_dependants.put("file:/D:/Maven/apache-maven-3.5.3/repo/org/apache/taglibs/taglibs-standard-impl/1.2.1/taglibs-standard-impl-1.2.1.jar", Long.valueOf(1529033924546L));
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("  \n");
      out.write("  \n");
  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  

      out.write("  \n");
      out.write("  \n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">  \n");
      out.write("<html>  \n");
      out.write("  <head>  \n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">  \n");
      out.write("      \n");
      out.write("    <title>修改用户信息</title>  \n");
      out.write("      \n");
      out.write("    <meta http-equiv=\"pragma\" content=\"no-cache\">  \n");
      out.write("    <meta http-equiv=\"cache-control\" content=\"no-cache\">  \n");
      out.write("    <meta http-equiv=\"expires\" content=\"0\">      \n");
      out.write("    <meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">  \n");
      out.write("    <meta http-equiv=\"description\" content=\"This is my page\">  \n");
      out.write("    <!-- \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"> \n");
      out.write("    -->  \n");
      out.write("    <!-- 引入jQuery文件 -->  \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\" language=\"javascript\"></script>  \n");
      out.write("    <script type=\"text/javascript\">  \n");
      out.write("    // 控制onsubmit提交的方法，方法名是vform()  \n");
      out.write("        function vform(){  \n");
      out.write("            //获取下面的id值  \n");
      out.write("            var ln = $(\"#loginname\").val();  \n");
      out.write("            var lp = $(\"#loginpass\").val();  \n");
      out.write("            var un = $(\"#age\").val();   \n");
      out.write("            //判断上面的变量，如果为空字符串不能提交  \n");
      out.write("            if(ln == \"\"){  \n");
      out.write("                alert(\"请输入登录名！\");  \n");
      out.write("                return false;  \n");
      out.write("            }  \n");
      out.write("            if(lp == \"\"){  \n");
      out.write("                alert(\"请输入密码！\");  \n");
      out.write("                return false;  \n");
      out.write("            }  \n");
      out.write("            if(un == \"\"){  \n");
      out.write("                alert(\"请输入年龄！\");  \n");
      out.write("                return false;  \n");
      out.write("            }    \n");
      out.write("            //除以上结果的可以提交，返回true  \n");
      out.write("            return true;  \n");
      out.write("        }  \n");
      out.write("    </script>  \n");
      out.write("  </head>  \n");
      out.write("    \n");
      out.write("  <body>  \n");
      out.write("    <!-- 用onsubmit调用上面的方法 -->  \n");
      out.write("    <form action=\"user/update\" method=\"post\" onsubmit=\"return vform()\">      \n");
      out.write("    ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("    <input type=\"submit\" value=\"提交\"/>  \n");
      out.write("    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${updateUser}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("<br><!-- 操作提醒 -->  \n");
      out.write("      <a href=\"user/userlist\">返回</a>  \n");
      out.write("    </form>  \n");
      out.write("  </body>  \n");
      out.write("</html>  ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fforEach_005f0.setParent(null);
    // /WEB-INF/jsp/update.jsp(54,4) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVar("po");
    // /WEB-INF/jsp/update.jsp(54,4) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/jsp/update.jsp(54,4) '${uid}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${uid}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
      if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("      \n");
          out.write("        <input type=\"hidden\"  name=\"id\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${po.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\"/><br/>     \n");
          out.write("        <table width=\"1000\" border=\"1\">  \n");
          out.write("            <tr>                \n");
          out.write("                <th>登录名</th>  \n");
          out.write("                <th>密码</th>  \n");
          out.write("                <th>年龄</th> \n");
          out.write("            </tr>           \n");
          out.write("            <tr>  \n");
          out.write("                <td><input type=\"text\" id=\"loginname\" name=\"userName\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${po.userName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\"></td>  \n");
          out.write("                <td><input type=\"text\" id=\"loginpass\" name=\"password\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${po.password}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\"></td>  \n");
          out.write("                <td><input type=\"text\" id=\"age\" name=\"age\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${po.age }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\"></td>  \n");
          out.write("           </tr>  \n");
          out.write("    </table>  \n");
          out.write("    ");
          int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fforEach_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
    }
    return false;
  }
}
