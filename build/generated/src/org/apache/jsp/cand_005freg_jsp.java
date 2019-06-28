package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cand_005freg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Candidate Registration</title>\n");
      out.write("    </head>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("    function checkForm(form)\n");
      out.write("\t{\n");
      out.write("\t\tif(form.CID.value === \"\")\n");
      out.write("\t\t{\n");
      out.write("\t\t\talert(\"Error: Username cannot be blank!\");\n");
      out.write("\t\t\tform.CID.focus();\n");
      out.write("\t\t\treturn false;\n");
      out.write("\t\t}\n");
      out.write("                if(form.PWD.value === \"\")\n");
      out.write("\t\t{\n");
      out.write("\t\t\talert(\"Error: Password cannot be blank!\");\n");
      out.write("\t\t\tform.PWD.focus();\n");
      out.write("\t\t\treturn false;\n");
      out.write("\t\t}\n");
      out.write("                if(form.CNFPWD.value === \"\")\n");
      out.write("\t\t{\n");
      out.write("\t\t\talert(\"Error: Please cofirm your password!\");\n");
      out.write("\t\t\tform.CNFPWD.focus();\n");
      out.write("\t\t\treturn false;\n");
      out.write("\t\t}\n");
      out.write("\t\tif(form.PWD.value !== form.CNFPWD.value)\n");
      out.write("\t\t{\n");
      out.write("\t\t\talert(\"Error:Passwords doesn't match\");\n");
      out.write("                        form.PWD.focus();\n");
      out.write("\t\t\tform.CNFPWD.focus();\n");
      out.write("\t\t\treturn false;\n");
      out.write("\t\t}\n");
      out.write("\t}\t\n");
      out.write("</script>\n");
      out.write("<body style=\"background-color:#EBEBEB\">\n");
      out.write("<h2 align=\"center\"><b><u>Candidate Registration</u></b></h2>\n");
      out.write("<form action=\"cand_ins.jsp\" name=\"form\" onsubmit=\"return checkForm(this)\" method=\"post\">\n");
      out.write("    \n");
      out.write("<table frame=\"box\" cellspacing=\"7\" align=\"center\">\n");
      out.write("<tr><td align=\"right\"><b>Full Name<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"NAME\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>Age<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"AGE\"value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>Gender<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td>Male:<input type=\"radio\" name=\"GEN\" value=\"male\">\n");
      out.write("        Female:<input type=\"radio\" name=\"GEN\" value=\"female\">\n");
      out.write("        Other:<input type=\"radio\" name=\"GEN\" value=\"other\">\n");
      out.write("<tr><td align=\"right\"><b>Address<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"ADDRESS\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>City<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"CITY\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>State<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> \n");
      out.write("        <select name=\"STATE\">\n");
      out.write("            <option value=\"\"></option>\n");
      out.write("            <option value=\"Telangana\">Telangana</option>\n");
      out.write("            <option value=\"Andhra pradesh\">Andhra pradesh</option>\n");
      out.write("            <option value=\"Delhi\">Delhi</option>\n");
      out.write("            <option value=\"Maharastra\">Maharastra</option>\n");
      out.write("            <option value=\"Tamil nadu\">Tamil nadu</option>\n");
      out.write("            <option value=\"Kerala\">Kerala</option>\n");
      out.write("            <option value=\"Karnataka\">Karnataka</option>\n");
      out.write("        </select> \n");
      out.write("<tr><td align=\"right\"><b>Pin Code<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"PINCODE\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>Mobile Number<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"MOBNO\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>E-mail<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"email\" name=\"EMAIL\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>Political Party<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"PARTY\" value=\"\"  align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>Candidate ID<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"text\" name=\"CID\" value=\"\" size=\"50\" align=\"left\">                                                        \n");
      out.write("<tr><td align=\"right\"><b>Create Password<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"password\" name=\"PWD\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td align=\"right\"><b>Confirm Password<sup><font color=\"red\">*</font></sup>:</b>\n");
      out.write("    <td> <input type=\"password\" name=\"CNFPWD\" value=\"\" size=\"50\" align=\"left\">\n");
      out.write("<tr><td><td align=\"right\"><small>Fields with <font color=\"red\">* </font>are mandatory. </small>\n");
      out.write("</table>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <p align=\"center\"><input type=\"submit\" name=\"submit\" value=\"submit\" align=\"right\" >\n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        <input type=\"reset\" name=\"cancel\" value=\"cancel\" align=\"left\"></p>\n");
      out.write("\n");
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
