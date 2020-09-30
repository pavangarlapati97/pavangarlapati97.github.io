<jsp:useBean id="oanconnection" class="connect.OanConnectionBean" scope="page"/>

<meta name="Microsoft Theme" content="sandston 011">
<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;
	ResultSet rs;

%>
<%	
String uname =(String)session.getAttribute("uname");
	if(uname==null)
	response.sendRedirect("userlogin.html");
else
{
	if((con=oanconnection.getConnection())!=null)
{
	st=con.createStatement();
		


		rs=st.executeQuery("select * from  all_ports");
		
out.println("<div color='#00ffff'><h3 align='center'>AIRPORT DETAILS</h3></DIV><br/><br/>");

out.println("<table bgcolor='#0099ff'   width='50%' id='AutoNumber1' align='center' cellspacing='3'>");
	out.println("<tr align ='center' border='4' bordercolor='#ffffff' bgcolor='#0099ff'><th>PORT_ID</th><th>PORT NAME</th><th>ADDRESS</th><th>PHONE NO</th></tr>");
	String pid;
	while(rs.next())
	{
	pid=rs.getInt(1)+"";
	out.println("<tr bgcolor='#99ccff'  align='center'><td>"+pid+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getLong(4)+"</td><td><a href='updateairport.jsp?pid="+pid+"'>UPDATE</a></td><td><a href='deleteairport.jsp?pid="+pid+"'>DELETE</a></td></tr>");
	

	}
	out.println("</table>");		
}
}
	
%><body background="stonbk.jpg" bgcolor="#FFFFFF" text="#000000" link="#993300" vlink="#CC6633" alink="#660000"><!--mstheme--><font face="Arial, Helvetica"><!--mstheme--></font></body>

<a href="addnewairport.html">Add New Airport</a><BR>
<a href="valid.jsp">BACK</a>