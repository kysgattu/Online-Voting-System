package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class votingstatus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User View</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#EBEBEB\">\n");
      out.write("        <center>\n");
      out.write("                ");

                    Statement st1=con.createStatement();     
                    ResultSet rs1=st1.executeQuery("select count(*) as Total_Votes from voting");
                    while(rs1.next())
                    {
                    
                
      out.write("\n");
      out.write("                <h3 align=\"center\">Total Votes Casted=");
      out.print(rs1.getString("Total_Votes"));
      out.write("</h3>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <table border=\"1\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Candidate Name</td>\n");
      out.write("                    <td>Votes Gained</td>\n");
      out.write("               </tr>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select name,count(name) as Votes from voting group by name");
                    while(rs.next())
                    {
                
      out.write("\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                      }
                
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("           </table>\n");
      out.write("       </center>\n");
      out.write("                ");

                    Statement st2=con.createStatement();     
                    ResultSet rs2=st2.executeQuery("select name from (select name,count(name) as Votes from voting group by name)as result where Votes=(select max(Votes) from voting) limit 1");
                    while(rs2.next())
                    {
                    
                
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            \n");
      out.write("  </body>\n");
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
