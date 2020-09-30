<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;
	ResultSet rs;



%>
<%	

String departure= request.getParameter("departure");
String destination= request.getParameter("destination");
String fare= Integer.parseInt(request.getParameter("fare"));
String pid= request.getParameter("pid");
String time= request.getParameter("time");
String day= request.getParameter("day");
	
Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st=con.createStatement();
		


rs=st.executeQuery("update timings set departure='"+departure+"', destination='"+destination+"', fare="+fare+", time='"+time+"', day='"+day+"'" where pid like '"+pid+"'" );

%>
<% response.sendRedirect("viewtimings.jsp") %>