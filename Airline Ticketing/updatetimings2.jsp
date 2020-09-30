<%@ page import="java.sql.*"%>

<%!
	
	Connection con;
	Statement st;
	ResultSet rs;



%>

<%	

String departure= request.getParameter("departure");
String destination= request.getParameter("destination");
int fare= Integer.parseInt(request.getParameter("fare"));
String pid= request.getParameter("pid");
String time= request.getParameter("time");
String day= request.getParameter("day");
Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st=con.createStatement();
		
System.out.println("update timings set source='"+departure+
"', destination='"+destination+
"', fare="+fare+
", time='"+time+
"', day='"+day+
"'  where pid like '"+pid+"'" );


int k=st.executeUpdate("update timings set source='"+departure+
"', destination='"+destination+
"', fare="+fare+
", time='"+time+
"', day='"+day+
"'  where pid like '"+pid+"'" );
if(k==1)
{
%>
<jsp:forward page="viewtimings.jsp"/>
<%
}
else

out.println("updation failure");
%>