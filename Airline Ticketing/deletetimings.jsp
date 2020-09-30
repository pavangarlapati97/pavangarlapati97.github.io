<jsp:useBean id="oanconnect" class="connect.OanConnectionBean" scope="page"/>
<%@ page import="java.sql.*"%>
<%!
	
	Connection con;
	Statement st;


	String values[] = new String[5];

%>
<%	
if(session.getAttribute("uname")==null)
response.sendRedirect("userlogout.jsp");
else
{
String id = request.getParameter("id");
System.out.println(id);
java.util.StringTokenizer stt= new java.util.StringTokenizer(id,"-");

	int i=0;
while(stt.hasMoreElements())
{
values[i]=(String)stt.nextElement();
System.out.println(values[i]);
i++;
}


if((con=oanconnect.getConnection())!=null)
{
	st=con.createStatement();
		
st.execute("delete from timings where pid like '"+values[0]+"' and time like '"+values[1]+"' and day like '"+values[2]+"'");
response.sendRedirect("viewtimings.jsp");
}
else
out.println("problem in database connectivity");
}

%>

