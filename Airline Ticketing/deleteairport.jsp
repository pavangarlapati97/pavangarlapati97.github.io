<jsp:useBean id="oanconnection" class="connect.OanConnectionBean" scope="page"/>

<meta name="Microsoft Theme" content="sandston 011">
<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;
	ResultSet rs;
	
	int pid;

%>
<%	
pid= Integer.parseInt(request.getParameter("pid"));


String uname =(String)session.getAttribute("uname");
	if(uname==null)
	response.sendRedirect("userlogin.html");
else
{
	if((con=oanconnection.getConnection())!=null)

	st=con.createStatement();
		

int i =st.executeUpdate("delete from all_ports where portid="+pid);
if(i==1)
response.sendRedirect("viewallairports.jsp");
}
%>