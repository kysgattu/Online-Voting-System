package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Login</title>\n");
      out.write("</head>    \n");
      out.write("    <body style=\"background-color:#EBEBEB\">\n");
      out.write("<h2 align=\"center\"><b><u>LOGIN</u></b></h2>\n");
      out.write("<table frame=\"box\" border=\"3\" align=\"center\">\n");
      out.write("    <tr><td align=\"center\">\n");
      out.write("            <b><u>Voter Login</b></u>\n");
      out.write("    </td></tr>\n");
      out.write("    <tr>\n");
      out.write("        <td>\n");
      out.write("            <form action=\"user_logchck.jsp\" method=\"post\" name=\"form\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr><td><b>Username:</b>\n");
      out.write("                    <td><input type=\"text\" name=\"CHCKID\">\n");
      out.write("                <tr><td><b>Password:</b>\n");
      out.write("                    <td><input type=\"password\" name=\"CHCKPWD\">\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            <p align=\"center\"> <button>SIGN IN </button></p>\n");
      out.write("            </form>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr><td align=\"center\">\n");
      out.write("            <b><u>Candidate Login</u></b>\n");
      out.write("    </td></tr>\n");
      out.write("    <tr>\n");
      out.write("        <td>\n");
      out.write("            <form action=\"cand_logchck.jsp\" method=\"post\" name=\"form\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr><td><b>Username:</b>\n");
      out.write("                    <td><input type=\"text\" name=\"CHCKID\">\n");
      out.write("                <tr><td><b>Password:</b>\n");
      out.write("                    <td><input type=\"password\" name=\"CHCKPWD\">\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            <p align=\"center\"> <button>SIGN IN </button></p>\n");
      out.write("            </form>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr><td align=\"center\">\n");
      out.write("            <b><u>Admin Login</u></b>\n");
      out.write("    </td></tr>\n");
      out.write("    <tr>\n");
      out.write("        <td>\n");
      out.write("            <form action=\"admin_logchck.jsp\" method=\"post\" name=\"form\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr><td><b>Username:</b>\n");
      out.write("                    <td><input type=\"text\" name=\"CHCKID\">\n");
      out.write("                <tr><td><b>Password:</b>\n");
      out.write("                    <td><input type=\"password\" name=\"CHCKPWD\">\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            <p align=\"center\"> <button>SIGN IN </button></p>\n");
      out.write("            </form>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
