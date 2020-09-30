<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 2</title>
<meta name="Microsoft Theme" content="sandston 011">
</head>

<body background="stonbk.jpg" bgcolor="#FFFFFF" text="#000000" link="#993300" vlink="#CC6633" alink="#660000">

<!--mstheme--><font face="Arial, Helvetica">

<p>&nbsp;</p>
<p>&nbsp;</p>

<form method="POST" action="checksd.jsp">
  
  <%@ page import="java.sql.*,java.io.*"%>

  <%!
  ResultSet rs,rs1,rs2;
	Connection con1;
	Statement st1,st2;
  String cities[];
 String source,destination,doj,doj1;
 String id;
  int i;
  %>
  <%
source = request.getParameter("departfrom");
destination = request.getParameter("destinationto");
doj = request.getParameter("dd")+"-"+request.getParameter("mm")+"-"+request.getParameter("yy");
doj1 = request.getParameter("dd")+"-"+request.getParameter("mm")+"-"+request.getParameter("yy");

if(source!=null || destination!=null)
{
if(!source.equals(destination))
{
con1=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st2=con1.createStatement();
	st1=con1.createStatement();

	rs1=st1.executeQuery("select to_char(to_date('"+doj.trim()+"'),'day') from dual");rs1.next();doj=rs1.getString(1).trim();rs1.close();
	
	rs2= st1.executeQuery("select t.source,t.destination,t.fare,t.pid,t.time,t.day,a.seating from timings t,aeroplane_details a where source like '"+source+"' and destination like '"+destination+"' and day like '"+doj+"' and t.pid=a.pid#");

	out.println(" <b>Timings of planes from "+source+" to "+destination+"</b>");
	out.println();

	out.println("<br><br><table bgcolor='#6699ff' border='0'   width='85%' id='AutoNumber1' align='center' cellspacing='3'>");
	out.println("<tr align ='center' bgcolor='#6699ff' cellspacing='7'><th>PLANE_ID</th><th>DEPART FROM</th><th>DESTINATION</th><th>FARE</th><th>TIME</th><th>DAY</th></tr>");

	while(rs2.next())
	{
	id=rs2.getString(4)+"*"+rs2.getString(6)+"*"+doj1+"*"+source+"*"+destination+"*"+rs2.getString(7)+"*"+rs2.getString(5)+"*"+rs2.getInt(3);;
	out.println("<tr align='center' bgcolor='#99ccff'><td>"+rs2.getString(4)+"</td><td>"+rs2.getString(1)+"</td><td>"+rs2.getString(2)+"</td><td>"+rs2.getString(3)+"</td><td>"+rs2.getString(5)+"</td><td>"+rs2.getString(6)+
	"</td><td><a  href='bookaticket.jsp?id="+id+"'>BOOK</a></td></tr>");
	System.out.println("in the loop");

	}
	out.println("</table>");
}
else
out.println("<h3><font color='#FF0000'>NOTE : ------ SOURCE AND DESTINATION PLACES ARE SAME -------</font></h3>");
}


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
Statement st=con.createStatement();
Statement st1=con.createStatement();
rs = st.executeQuery("select source from timings");
rs1=st1.executeQuery("select destination from timings");

  
  %>
<br><br>
<p><b>Enter Departure and Destination place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</b></p>
  Departure place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
<select size="1" name="departfrom">

  
  <option selected>----select place-----</option>
<%

while(rs.next())
{
out.println("<option>"+rs.getString(1)+"</option>");
}
%>  
  
  </select></p>
  <p>Destination place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <select size="1" name="destinationto">
  
  <option selected>----select place-----</option>
  <%
while(rs1.next())
{
out.println("<option>"+rs1.getString(1)+"</option>");
}

%>  

  </select>
  </p>
  <p>Date of Journey&nbsp;</p>
  <p>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select size="1" name="dd">
  
  <option value="01">01</option>
  <option value="02">02</option>
  <option value="03">03</option>
  <option value="04">04</option>
  <option value="05">05</option>
  <option value="06">06</option>
  <option value="07">07</option>
  <option value="08">08</option>
  <option value="09">09</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
  <option value="13">13</option>
  <option value="14">14</option>
  <option value="15">15</option>
  <option value="16">16</option>
  <option value="17">17</option>
  <option value="18">18</option>
  <option value="19">19</option>
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  <option value="24">24</option>
  <option value="25">25</option>
  <option value="26">26</option>
  <option value="27">27</option>
  <option value="28">28</option>
  <option value="29">29</option>
  <option value="30">30</option>
  <option value="31">31</option>
  


  </select>&nbsp;&nbsp;&nbsp;</p>
  <p>Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select size="1" name="mm">
  <option value="JAN">JAN</option>
  <option value="FEB">FEB</option>
  <option value="MAR">MAR</option>
  <option value="APR">APR</option>
  <option value="MAY">MAY</option>
  <option value="JUN">JUN</option>
  <option value="JUL">JUL</option>
  <option value="AUG">AUG</option>
  <option value="SET">SEP</option>
  <option value="OCT">OCT</option>
  <option value="NOV">NOV</option>
  <option value="DEC">DEC</option>
  
  
  
  </select>&nbsp;&nbsp; </p>
  <p>Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="yy" size="20">(four digits)</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset" name="B2"></p>
</form>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.html">Home</a></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>

<!--mstheme--></font>

</body>

</html>