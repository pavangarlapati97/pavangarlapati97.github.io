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
		


		rs=st.executeQuery("select * from  timings");
		
out.println("<div color='#00ffff'><h3 align='center'><u>T I M I N G S</u></h3></DIV><br/><br/>");

out.println("<table bgcolor='#ff00ff' border='0' width='90%' id='AutoNumber1' align='center' cellspacing='3'>");
	out.println("<tr align ='center' bgcolor='#ff00ff'><th>DEPARTURE</th><th>DESTINATION</th><th>FARE</th><th>PID</th><th>TIME</th><th>DAY</th><th>UPDATE</th><th>DELETE</th></tr>");

	while(rs.next())
	{
String id=rs.getString(4)+"-"+rs.getString(5)+"-"+rs.getString(6);
out.println("<tr bgcolor='#ff99ff' align='center'><td>"+rs.getString(1)+
"</td><td>"+rs.getString(2)+
"</td> <td>"+rs.getInt(3)+
"</td> <td>"+rs.getString(4)+
"</td><td>"+rs.getString(5)+
"</td><td>"+rs.getString(6)+
"</td><td><a  href='updatetimings.jsp?id="+id+
"'>UPDATE</a></td><td><a  href='deletetimings.jsp?id="+id+
"'>DELETE</a></td></tr>");
	

	}
	}
	out.println("</table><br><br><br>Do You Want to <a href='addnewflight.html'> ADD NEW FLIGHT ?</a>");
}		

	
%><body background="stonbk.jpg" bgcolor="#FFFFFF" text="#000000" link="#993300" vlink="#CC6633" alink="#660000"><!--mstheme--><font face="Arial, Helvetica"><p>&nbsp; <a href="oanairhome.html">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="valid.jsp">BACK</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>

<!--mstheme--></font>

</body>