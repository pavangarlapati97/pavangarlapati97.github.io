<%@ page import="java.sql.*,java.math.*"%>

<%!
	
	Connection con;
	Statement st;
	ResultSet rs;



%>

<%	
int pid= Integer.parseInt(request.getParameter("pid").trim());
String pname= request.getParameter("pname");
String address= request.getParameter("address");
String bd= request.getParameter("phone");

Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st=con.createStatement();
		
System.out.println("insert into all_ports values("+pid+",'"+pname+"','"+address+"',"+bd+")");


if(!(st.execute("insert into all_ports values("+pid+",'"+pname+"','"+address+"',"+new Long(bd).longValue()+")")))
response.sendRedirect("viewallairports.jsp");
%>