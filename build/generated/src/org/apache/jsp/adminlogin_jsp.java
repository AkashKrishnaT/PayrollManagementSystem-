package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <style>\n");
      out.write("            input[type=\"text\"], input[type=\"password\"],select{\n");
      out.write("                height:20px;\n");
      out.write("                width: 175px;\n");
      out.write(" //            display: inline-block;\n");
      out.write(" // padding: 4px 6px;\n");
      out.write(" // margin-bottom: 10px;\n");
      out.write(" // margin-top: 10px;\n");
      out.write("  //font-size: 14px;\n");
      out.write("  //line-height: 20px;\n");
      out.write("  //color: #555555;\n");
      out.write("  //-webkit-border-radius: 4px;\n");
      out.write("  //-moz-border-radius: 4px;\n");
      out.write("  //border-radius: 4px;\n");
      out.write("  //vertical-align: middle;\n");
      out.write("            }\n");
      out.write(" td {           font-size: 18px;}\n");
      out.write(" select{        height:30px;\n");
      out.write("                width: 190px;\n");
      out.write("                font-family: sans-serif;}\n");
      out.write(".well\n");
      out.write("{\n");
      out.write("\n");
      out.write("   height:43px;\n");
      out.write("  background-color: #f5f5f5;\n");
      out.write("  border: 1px solid #e3e3e3;\n");
      out.write("  -webkit-border-radius: 4px;\n");
      out.write("  -moz-border-radius: 4px;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);\n");
      out.write("  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);\n");
      out.write("  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);\n");
      out.write("}\n");
      out.write("\n");
      out.write("*{font-family: sans-serif;}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"well\" style=\"margin-top: 160px;height:300px;width:500px;margin-left:433px;\">\n");
      out.write("            <form method=\"post\" action=\"ValidationAdmin\">\n");
      out.write("        <table align=\"center\" style=\"margin-left: 70px ;margin-top: 8px ;\">\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\"><center style=\"color:#2F9DD1;\"></center></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><h4>Username</h4></td><td><input type=\"text\" name=\"username\" placeholder=\"Please Enter Username\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><h4>Password</h4></td><td><input type=\"password\" name=\"password\" placeholder=\"Please Enter Password\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("                     <tr><td></td>\n");
      out.write("                <td>\n");
      out.write("                    <button class=\"btn\" style=\"margin-left: 20px;\" type=\"submit\" name=\"login\">Log In</button>\n");
      out.write("                </td>\n");
      out.write("                     <br>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("            \n");
      out.write("         \n");
      out.write("    </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
