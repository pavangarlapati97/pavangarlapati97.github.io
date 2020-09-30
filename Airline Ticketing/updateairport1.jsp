<jsp:useBean id="oanconnection" class="connect.OanConnectionBean" scope="page"/>

<meta name="Microsoft Theme" content="sandston 011">
<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;
	ResultSet rs;
	String pname,address,phone;
	int pid;

%>
<%	
pid= Integer.parseInt(request.getParameter("pid"));
pname=request.getParameter("pname");
address=request.getParameter("address");
phone=request.getParameter("phone");


String uname =(String)session.getAttribute("uname");
	if(uname==null)
	response.sendRedirect("userlogin.html");
else
{
	if((con=oanconnection.getConnection())!=null)

	st=con.createStatement();
		

int i =st.executeUpdate("update all_ports set portname='"+pname+"',address='"+address+"',phone="+new Long(phone).longValue()+" where portid="+pid);
if(i==1)
response.sendRedirect("viewallairports.jsp");
}
%>