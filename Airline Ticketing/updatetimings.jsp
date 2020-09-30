<jsp:useBean id="oanconnect" class="connect.OanConnectionBean" scope="page"/>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
<meta name="Microsoft Theme" content="expeditn 011">
</head>

<body background="exptextb.jpg" bgcolor="#FFFFFF" text="#000000" link="#993300" vlink="#666600" alink="#CC3300">

<!--mstheme--><font face="Book Antiqua, Times New Roman, Times">

<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<u><b>U P D A T E&nbsp;&nbsp;&nbsp; D E T A I L S</b></u></p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>

<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;
	ResultSet rs;

	String values[] = new String[5];

%>
<%	
if(session.getAttribute("uname")==null)
response.sendRedirect("userlogout.jsp");
String id = request.getParameter("id");
System.out.println(id);
java.util.StringTokenizer stt= new java.util.StringTokenizer(id,"-");

	int i=0;
while(stt.hasMoreElements())
{
values[i]=(String)stt.nextElement();
System.out.println(values[i]);
i++;
}
	if((con=oanconnect.getConnection())!=null)
	{

	st=con.createStatement();
rs=st.executeQuery("select *from timings where pid like '"+values[0]+"' and time like '"+values[1]+"' and day like '"+values[2]+"'");
rs.next();
%>










<form method="POST" action="updatetimings2.jsp">
 <p align="left">
  PID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  :<%= rs.getString(4) %>
  <input type="hidden" name="pid" value=<%= rs.getString(4) %>></p>
  <p align="left">DEPARTURE&nbsp; PLACE&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="departure" size="20" value=<%= rs.getString(1)%>></p>
  <p align="left">DESTINATION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="destination" size="20" value=<%= rs.getString(2)%>></p>
  <p align="left">FARE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="fare" size="20" value=<%= rs.getString(3)%>></p>
  <p align="left">TIME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="time" size="20"  value=<%= rs.getString(5)%>></p>
  <p align="left">DAY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="day" size="20" value=<%= rs.getString(6)%>>&nbsp;&nbsp; </p>
  <p align="left">&nbsp;</p>
  <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset" name="B2"></p>
  <%
  }
  else
  out.println("problem in database connectivity");
%>
</form>

<!--mstheme--></font>

</body>

</html>