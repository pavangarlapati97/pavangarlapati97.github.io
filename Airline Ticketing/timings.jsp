<%@ page import="java.sql.*"%>
<%!
	String source,destination;	
	Connection con;
	Statement st;
	ResultSet rs;
%>
<%	
	source = request.getParameter("departfrom");
	destination = request.getParameter("destinationto");
	System.out.println(source+"	"+destination);
if(!source.equals(destination))
{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st=con.createStatement();
	rs= st.executeQuery("select * from timings where source like '"+source+"' and destination like '"+destination+"'");

	out.println(" <b>Timings of planes from "+source+" to "+destination+"</b>");
	out.println();

	out.println("<br><br><table bgcolor='white' border='0'   width='85%' id='AutoNumber1' align='center' cellspacing='1'>");
	out.println("<tr align ='center' bgcolor='#6699ff'><th>PLANE_ID</th><th>DEPART FROM</th><th>DESTINATION</th><th>FARE</th><th>TIME</th><th>DAY</th></tr>");

	while(rs.next())
	{
	out.println("<tr align='center' bgcolor='#99ccff'><td>"+rs.getString(4)+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
	System.out.println("in the loop");

	}
	out.println("</table>");
}
else
{
out.println("<b>departure place and destination place are same</b>");
%>
<jsp:include page="checkds.jsp"/>
<%
}

%>