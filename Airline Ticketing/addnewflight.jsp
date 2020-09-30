<%@ page import="java.sql.*"%>

<%!
	
	Connection con;
	Statement st;
	ResultSet rs;



%>

<%	
String pid= request.getParameter("pid");
String departure= request.getParameter("departure");
String destination= request.getParameter("destination");
int fare= Integer.parseInt(request.getParameter("fare"));
String time= request.getParameter("time");
String day= request.getParameter("day");

Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st=con.createStatement();
		
System.out.println("insert into timings values('"+pid+"','"+departure+"','"+destination+"',"+fare+",'"+time+"','"+day+"')");


st.execute("insert into timings values('"+departure+"','"+destination+"',"+fare+",'"+pid+"','"+time+"','"+day+"')");
response.sendRedirect("viewtimings.jsp");
%>