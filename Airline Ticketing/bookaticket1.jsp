<jsp:useBean id="oanconnection" class="connect.OanConnectionBean" scope="page"/>

<%@ page import="java.sql.*"%>

<%!
	String flight,plainid,doj,day,source,destination,pid,pname,age,gender,nationality,ccno,time;
	
	int i,fare,seating;	
	Connection con;
	Statement st;
	ResultSet rs;

%>
<%	
time = request.getParameter("time");

plainid = request.getParameter("plainid");
doj = request.getParameter("doj");
day= request.getParameter("day");
source= request.getParameter("source");
destination= request.getParameter("destination");
seating= Integer.parseInt(request.getParameter("seating"));
fare=Integer.parseInt(request.getParameter("fare"));
pname= request.getParameter("pname");
age= request.getParameter("age");
gender= request.getParameter("gender");
nationality= request.getParameter("nationality");
ccno= request.getParameter("ccno");

	if((con=oanconnection.getConnection())!=null)
{
	st=con.createStatement();		
		rs=st.executeQuery("select count(*) from  reserve where pid like '"+plainid+"' and dod like '"+doj+"'");
		rs.next();
int i = rs.getInt(1);rs.close();
System.out.println("insert into reserve values('"+plainid+"','"+pname+"','"+age+"','"+gender+"','"+source+"','"+destination+"','"+time+"','"+doj+"','"+ccno+"',"+fare+")");
if(i<seating)
{


	if((st.executeUpdate("insert into reserve values('"+plainid+"','"+pname+"','"+age+"','"+gender+"','"+source+"','"+destination+"','"+time+"','"+doj+"','"+ccno+"',"+fare+")"))==1)
	{	
	out.println("Ticket Reservation successful");
	out.println("<h3><u><center>Airline  Ticket  Reservation</center></u></h3><br>");
	out.println("<center><b>Passenger Name&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp</b>"+pname+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <b> Age&nbsp:</b>&nbsp"+age+"&nbsp&nbsp&nbsp&nbsp&nbsp<b> Sex&nbsp:</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+gender+"</center><br>");
	out.println("<center><b>Departure Place:</b>"+source+"&nbsp&nbsp&nbsp&nbsp  <b>Destination Place  :</b>"+destination+"</center><br>");
	out.println("<center><b>Departure &nbspDate&nbsp&&nbspTime&nbsp:&nbsp&nbsp&nbsp</b>"+doj+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+time+"</center><br>");
	out.println("<center><b>F&nbspa&nbspr&nbspe&nbsp &nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp</b>"+fare+"<b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspF&nbspl&nbspi&nbspg&nbsph&nbspt&nbsp N&nbspo&nbsp:&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp</b>"+plainid+"</center>");	
    }
}
	else
	out.println("Ticket Reservation Failure, because of unavailability of seats");
	
}
else
out.println("Unable to connect to oracle");		
	
%>