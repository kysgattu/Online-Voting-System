package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class voting_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connection.jsp");
  }

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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("    \n");
      out.write("    <body style=\"background-color:#EBEBEB\">\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("      \n");
      out.write(" ");
 Class.forName("com.mysql.jdbc.Driver");
 
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting","root","root");
    
    
        
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Vote For your Candidate</title>\n");
      out.write("    </head>\n");
      out.write("<body style=\"background-color:#EBEBEB\">\n");
      out.write("<h2 align=\"center\"><b><u>Election</u></b></h2>\n");
      out.write("<form action=\"voting_ins.jsp\" name=\"form\" method=\"post\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<table cellspacing=\"7\" align=\"center\">\n");
      out.write("<tr><td align=\"right\"><b>Enter Your User ID:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"VID\" value=\"\" size=\"20\" align=\"left\">                                                        \n");
      out.write("<tr><td align=\"right\"><b>Vote For A Candidate From Below:</b>\n");
      out.write("    <td>\n");
      out.write("        ");

          Statement statement = con.createStatement() ;
          ResultSet rs =statement.executeQuery("select name from cand_reg") ;
        
      out.write("\n");
      out.write("\n");
      out.write("        <select name=\"CAND\">\n");
      out.write("        <option value=\"\"></option>    \n");
      out.write("        ");
  while(rs.next()){ 
      out.write("\n");
      out.write("        <option value=\"");
      out.print( rs.getString(1));
      out.write('"');
      out.write('>');
      out.print( rs.getString(1));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </select> \n");
      out.write("</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("<table cellspacing=\"10\" align=\"center\">\n");
      out.write("<tr>\n");
      out.write("    <td> <input type=\"submit\" name=\"submit\" value=\"submit\" align=\"right\" >\n");
      out.write("    <td> <input type=\"reset\" name=\"cancel\" value=\"cancel\" align=\"left\">\n");
      out.write("</table>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</body>\n");
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
