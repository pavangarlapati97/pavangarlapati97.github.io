<jsp:useBean id="oanconnection" class="connect.OanConnectionBean" scope="page"/>

<meta name="Microsoft Theme" content="sandston 011">
<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;
	ResultSet rs;
	int id;

%>
<%	
System.out.println(request.getParameter("pid"));


String uname =(String)session.getAttribute("uname");
	if(uname==null)
	response.sendRedirect("userlogin.html");
else

	if((con=oanconnection.getConnection())!=null)

	st=con.createStatement();
		

rs=st.executeQuery("select * from  all_ports where portid="+Integer.parseInt(request.getParameter("pid")));
if(rs.next())
{
%>

<html>
	<head>
		<title>New Page 1</title>
		<meta http-equiv="Content-Language" content="en-us">
		<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
		<meta name="ProgId" content="FrontPage.Editor.Document">
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
		<meta name="Microsoft Theme" content="expeditn 011">
	</head>
	<body background="exptextb.jpg" bgcolor="#ffffff" text="#000000" link="#993300" vlink="#666600"
		alink="#cc3300">
		<!--mstheme--><font face="Book Antiqua, Times New Roman, Times">
			<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<u><b>U P D A T E &nbsp;&nbsp;&nbsp;&nbsp; A I R P O R T 
						&nbsp;&nbsp;&nbsp; D E T A I L S</b></u></p>
			<p align="center">&nbsp;</p>
			<p align="center">&nbsp;</p>
			<form method="post" action="updateairport1.jsp">
				<p align="left">
					PID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="pid" size="20" value="<%= rs.getInt(1)%>" READONLY></p>
				<p align="left"></p>
				<p align="left">
					PORT 
					NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="pname" size="20" value="<%= rs.getString(2)%>"></p>
				<p align="left">ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="address" size="20" value="<%= rs.getString(3)%>"></p>
				<p align="left">
					PHONE 
					NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="phone" size="20" value="<%= rs.getString(4)%>">&nbsp;&nbsp;
				</p>
				<p align="left">&nbsp;</p>
				<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="Submit" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Reset" name="B2"></p>
			</form>
			<!--mstheme--></font>
	</body>
</html>
<%
}
%>