<jsp:useBean id="oanconnection" class="connect.OanConnectionBean" scope="page"/>
<%@ page import="java.sql.*"%>
<%!
	String uname,pname;
	Connection con;
	Statement st;
	ResultSet rs;
%>
<%	
	uname = request.getParameter("username");
	pname = request.getParameter("password");

if((con=oanconnection.getConnection())!=null)
{


	st=con.createStatement();
	rs= st.executeQuery("select * from admin where password like '"+pname+"' and username like '"+uname+"'");
	if(rs.next())
	{
	String uname = rs.getString(1);
	String pname = rs.getString(2);
	session.setAttribute("uname",uname);
	session.setAttribute("pname",pname);
	con.close();
	response.sendRedirect("valid.jsp");
	%>
	
	
		<%
		}
		else
		{
		out.println("Invalid username or password");
		con.close();
		%><jsp:include page="userlogin.html"/><%
		}
}
out.println("unseccessful database connectivity");	
%>